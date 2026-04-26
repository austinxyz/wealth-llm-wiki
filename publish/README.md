# 在美华人理财规划知识库

本仓库是一个面向在美华人的财富规划知识体系，包含：

- **wiki/**：100+ 概念的结构化知识条目（账户类型、税务策略、退休规划、中美对比等）
- **publish/**（本目录）：用虚构家庭演示如何把知识转化为实际决策
- **templates/**：空白财务档案，填写后配合 AI 工具生成个性化建议

## 三个虚构人物

| 人物 | 情况 | 系列 |
|------|------|------|
| [小陈](personas/小陈.md) | 30岁，H1B，刚入职，从零建立体系 | [新手入门](新手入门/) |
| [阿明](personas/阿明.md) | 50岁，绿卡，有积累，规划退休 | [退休规划](退休规划/) |
| [王女士](personas/王女士.md) | 55岁，绿卡，中美双边，考虑回国 | [中美双边](中美双边/) |

## 快速开始

### 前置条件
- 安装 [Claude Code](https://claude.ai/code)（Anthropic 官方 CLI）
- 有 GitHub 账号（推荐 Fork，见下）

### 推荐：Fork 这个仓库

**强烈建议 Fork 而不是直接克隆。** Fork 之后你拥有自己的副本，可以：
- 在自己的 GitHub 上保留完整知识库备份
- 将来同步上游更新（新增的 wiki 条目和文章）
- 按需添加自己的笔记或修改

**Fork 步骤：**
1. 点击 GitHub 页面右上角 **Fork** 按钮
2. 选择你自己的账号，完成 Fork
3. 克隆你 Fork 后的仓库：

```bash
git clone https://github.com/<你的用户名>/wealth-llm-wiki.git
cd wealth-llm-wiki
```

### 建立本地 output 目录

`output/` 是你的私人工作空间，已被 `.gitignore` 忽略，**不会上传到 GitHub**。克隆后手动创建：

```bash
mkdir output
```

然后从模板复制并填写财务档案：

```bash
cp templates/基本信息.md output/基本信息.md
cp templates/收入与税务.md output/收入与税务.md
cp templates/账户与资产.md output/账户与资产.md
cp templates/财务目标.md output/财务目标.md
# 用任意编辑器打开 output/ 中的文件并填写你的真实数据
```

### 运行 AI 分析

```bash
claude  # 启动 Claude Code
```

在 Claude Code 中输入：

```
/wealth-advise 退休规划
```

或参考 [prompt-guide.md](prompt-guide.md) 选择适合你情况的问题。

### 同步上游更新

如果原始仓库有新文章或新 wiki 条目，可以拉取更新（不会影响你的 `output/`）：

```bash
git remote add upstream https://github.com/austinxyz/wealth-llm-wiki.git
git fetch upstream
git merge upstream/main
```

## 用 Obsidian 浏览知识库

整个仓库是一个 [Obsidian](https://obsidian.md) vault，克隆后直接用 Obsidian 打开即可获得最佳阅读体验。

### 打开方式

1. 下载并安装 [Obsidian](https://obsidian.md)（免费）
2. 打开 Obsidian → **Open folder as vault** → 选择克隆下来的 `wealth/` 目录
3. 首次打开时 Obsidian 会提示是否信任作者配置，点击 **Trust author and enable plugins**

### 你可以做什么

**浏览知识条目**
- 左侧文件树中打开 `wiki/` → 按分类浏览 100+ 条结构化知识条目
- 每个分类都有 `00-MOC-xxx.md` 总览页，列出该分类所有条目

**查看文章与案例**
- 打开 `publish/` → 按人物系列阅读本文章及后续内容
- 文章内的 `[[wiki/...]]` 链接可直接点击跳转到对应知识条目

**图谱视图（Graph View）**
- 点击左侧图谱图标（或 Ctrl+G）打开知识图谱
- 可视化查看 wiki 条目之间的引用关系、文章与知识的连接

**查看 AI 生成的个人建议**
- 用 Claude Code 运行 `/wealth-advise` 后，建议文件会保存到 `output/`
- 在 Obsidian 中打开 `output/` 即可阅读，同样支持 WikiLink 跳转到相关 wiki 条目

### 注意事项

- `output/` 目录不在 git 追踪范围内（`.gitignore`），是你的私人工作空间
- wiki 条目中的 Dataview 查询块（MOC 页）需要安装 **Dataview 插件**才能渲染（可在 Settings → Community Plugins 搜索安装）；不安装也不影响阅读

---

## 隐私说明

- 你填写的 `output/` 文件已被 `.gitignore` 忽略，**不会上传到 GitHub**
- `templates/` 模板本身不含任何个人数据

## 免责声明

本知识库内容仅供参考，不构成投资或税务建议。重大财务决策请咨询持牌财务顾问（CFP）或注册会计师（CPA）。
