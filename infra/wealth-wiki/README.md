# 🏛️ 家庭财富知识库 - Docker 部署

基于 **Quartz 4** 的 Obsidian-style 静态网站，支持完整 `[[wikilinks]]` + 知识图谱 + 全文搜索。

---

## 📂 文件清单

```
wealth-wiki/
├── docker-compose.yml         # Docker 编排
├── Dockerfile                 # Quartz 镜像构建
├── nginx.conf                 # Nginx 反代 + Basic Auth
├── quartz.config.ts           # Quartz 主配置
├── quartz.layout.ts           # 页面布局
├── content/
│   └── index.md              # 网站首页
├── .env.example              # 环境变量模板
├── generate-htpasswd.sh      # 密码生成脚本
├── deploy.sh                 # 一键部署
└── README.md                 # 本文档
```

---

## 🚀 UGREEN NAS 部署步骤

### Step 1：准备 NAS 环境

1. **启用 SSH**：
   - UGOS 控制面板 → 终端 & SNMP → 启用 SSH
   - 记下 SSH 用户名（默认 `admin` 或你创建的）

2. **确认 Docker 已装**：
   - UGOS 应用中心 → Docker → 安装

3. **SSH 登录 NAS**：
   ```bash
   ssh your-username@10.0.0.20
   ```

### Step 2：上传部署文件

**方法 A：通过 SCP 从本地上传**
```bash
# 在你的 Mac/PC 上（wealth 项目根目录下）
scp -r infra/wealth-wiki your-username@10.0.0.20:/volume1/docker/
```

**方法 B：通过 UGOS 文件管理器**
1. 文件 App → 新建文件夹 `/volume1/docker/wealth-wiki`
2. 上传 `wealth/infra/wealth-wiki/` 下的所有文件到此目录

**方法 C：从 Git Clone**
```bash
# SSH 进入 NAS 后（若 wealth 仓库已在 git）
mkdir -p /volume1/docker
cd /volume1/docker
git clone <your-wealth-repo-url>
ln -s /volume1/docker/wealth/infra/wealth-wiki wealth-wiki
# 否则用方法 A 或 B
```

### Step 3：同步三大内容目录到 NAS

**推荐 Syncthing**（实时双向同步）：

#### NAS 端
1. UGOS 应用中心 → 搜索 **Syncthing** → 安装
2. Syncthing Web UI（通常 `http://10.0.0.20:8384`）
3. 添加文件夹：`/volume1/sync/wealth`
4. 记下设备 ID

#### 你的 Mac/PC
1. 下载 Syncthing：https://syncthing.net/downloads/
2. 添加远程设备（输入 NAS 设备 ID）
3. 共享 `wealth/` 文件夹（包含 raw_material / wiki / output）
4. 选择"仅发送"（Mac 是源）

同步完成后 NAS 上应有：
```
/volume1/sync/wealth/
├── raw_material/
├── wiki/
└── output/
```

### Step 4：配置 .env

```bash
cd /volume1/docker/wealth-wiki
cp .env.example .env
vi .env   # 或用 UGOS 文本编辑器
```

修改以下变量：
```bash
BIND_IP=10.0.0.20                              # 你的 NAS IP
WEB_PORT=8080                                   # 访问端口
RAW_MATERIAL_PATH=/volume1/sync/wealth/raw_material
WIKI_PATH=/volume1/sync/wealth/wiki
OUTPUT_PATH=/volume1/sync/wealth/output
```

### Step 5：生成访问密码

```bash
cd /volume1/docker/wealth-wiki
chmod +x generate-htpasswd.sh

# 生成密码（替换 YOUR_PASSWORD）
bash generate-htpasswd.sh family YOUR_PASSWORD
```

记住这个密码，分发给家人。

### Step 6：一键部署

```bash
chmod +x deploy.sh
bash deploy.sh
```

首次构建需要 **3-5 分钟**（下载 Quartz + npm install）。

### Step 7：测试访问

**NAS 本机测试**：
```bash
curl -u family:YOUR_PASSWORD http://localhost:8080
```

**家里其他设备**：
- 浏览器打开 `http://10.0.0.20:8080`
- 输入 `family` + 密码

---

## 🔒 防火墙配置（必做）

### UGOS 防火墙

1. 控制面板 → **安全 → 防火墙**
2. 启用防火墙
3. 新建规则（按优先级排序）：

**规则 1：允许内网访问 8080**
- 源 IP：`10.0.0.0/24`（或你的家庭网段）
- 协议：TCP
- 端口：8080
- 操作：**允许**

**规则 2：拒绝其他所有 8080**
- 源 IP：`任意`
- 协议：TCP
- 端口：8080
- 操作：**拒绝**
- 优先级：**低于规则 1**

### 路由器检查

登录家里路由器，确认：
- ❌ **不要**设置 8080 端口转发
- ❌ **不要**将 NAS 设为 DMZ
- ❌ 关闭 UPnP（防止自动转发）

---

## 🛠️ 常用运维命令

```bash
# 查看运行状态
docker compose ps

# 查看日志（实时）
docker compose logs -f

# 重启
docker compose restart

# 停止
docker compose down

# 更新（拉取最新 Quartz + 重建）
docker compose up -d --build --force-recreate

# 进入容器调试
docker compose exec quartz sh
```

---

## 🔄 自动更新工作流

**Mac 编辑 → 自动同步到 NAS → Quartz 自动检测 → 页面自动更新**：

1. 你在 Mac 上用 Obsidian 编辑任何文件
2. Syncthing 自动同步到 NAS（通常几秒内）
3. Quartz 的 `build --serve` 模式监听到文件变化
4. 自动重建受影响的页面
5. 家人刷新浏览器即看到最新版

**无需手动重启容器。**

---

## 🐛 常见问题

### Q1：家人访问 10.0.0.20:8080 打不开
- 检查容器：`docker compose ps`
- 看端口是否绑定：`docker port wealth-nginx`
- 防火墙是否放行

### Q2：显示"The connection was reset"
- 端口冲突：其他服务占用 8080
- 检查：`netstat -tuln | grep 8080`
- 解决：修改 .env 中 `WEB_PORT=8081`

### Q3：首页显示 404
- Quartz 构建失败：`docker compose logs quartz`
- 检查 index.md 在容器内：`docker exec wealth-quartz ls /app/content`

### Q4：WikiLinks 不跳转
- 确认 `quartz.config.ts` 中 `Plugin.CrawlLinks({ markdownLinkResolution: "shortest" })`
- 文件名含中文需确保 UTF-8 编码

### Q5：中文字体难看
- 编辑 `quartz.config.ts` 的 `typography` 配置
- 加入中文字体：
  ```typescript
  body: "Source Sans Pro, 'Noto Sans SC', sans-serif",
  ```

### Q6：移动端显示差
- Quartz 原生支持响应式
- 若仍有问题 → 查看浏览器 Dev Tools

### Q7：想删除 Basic Auth
- 修改 `docker-compose.yml`，直接暴露 Quartz 端口：
  ```yaml
  quartz:
    ports:
      - "10.0.0.20:8080:8080"
  ```
- 删除 nginx service

---

## 🌐 可选：Tailscale 外出访问

若想在**外网也能访问**（不开防火墙端口）：

### NAS 安装 Tailscale

```bash
# SSH 到 NAS
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
# 复制返回的 URL 在浏览器打开授权
```

### 家人设备安装 Tailscale 客户端
- iOS / Android：App Store / Play Store
- Mac / Windows：tailscale.com/download
- 用同一个账号登录

### 访问
- 外网：`http://nas-name.tailnet.ts.net:8080`
- 自动 HTTPS（可选）
- 完全私有 VPN

---

## 📱 家人使用指南（可复制发给家人）

```
╔════════════════════════════════╗
║  📖 家庭财富知识库              ║
╠════════════════════════════════╣
║                                ║
║  💻 电脑浏览器：                ║
║  http://10.0.0.20:8080         ║
║                                ║
║  📱 手机：                     ║
║  1. 连家里 WiFi                ║
║  2. 浏览器打开同一地址          ║
║  3. "添加到主屏幕"              ║
║                                ║
║  🔐 账号：family               ║
║  密码：[由家长告知]             ║
║                                ║
║  🔍 顶部搜索框（中英文）        ║
║                                ║
║  ⚠️  仅限家里 WiFi 访问         ║
║                                ║
╚════════════════════════════════╝
```

---

## 🎨 自定义

### 修改首页
编辑 `content/index.md`，重启容器生效。

### 修改主题色
编辑 `quartz.config.ts` 的 `theme.colors`。

### 添加组件
编辑 `quartz.layout.ts`，参考 Quartz 文档：
https://quartz.jzhao.xyz/features

### 更改端口
编辑 `.env` 的 `WEB_PORT`，重启。

---

## 📚 参考链接

- Quartz 文档：https://quartz.jzhao.xyz/
- Quartz GitHub：https://github.com/jackyzha0/quartz
- UGOS Docker 教程：https://help.ugreen.com
- Syncthing 文档：https://docs.syncthing.net

---

*初版 2026-04-20 | 适用于 UGREEN NAS + Docker*
