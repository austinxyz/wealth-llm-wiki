# 知识库对外打包设计文档（教程 zip + 兴趣小组包）

**日期**：2026-07-22
**状态**：已确认，待实施

---

## 目标

把治理完成的知识库（raw_material + wiki，2026-07 审计版）打包给两类受众：

1. **教程读者**（Claude Desktop 用户）：更新 `wealth-llm-wiki.zip`，走原有 learn.austinxyz.ai 发布链路
2. **兴趣小组学员**（Claude Code 用户）：在 `community/财富管理/财富知识库/` 建自包含项目（知识库 + skills + 使用手册）

**硬约束**：任何打包产物不得含个人数据（output/ 真实内容、个人姓名、账户金额）。

---

## 一、打包脚本 `projects/wealth-kb/make-zip.sh`

重建 `C:\Users\lorra\projects\wealth-kb\`（原目录已丢失，ai-course build.sh 第 62 行仍指向它）。

```
wealth-kb/
├── make-zip.sh
├── templates/
│   ├── CLAUDE-community.md      （裁剪版 CLAUDE.md）
│   ├── README-community.md      （财富知识库使用手册）
│   ├── output-template/
│   │   ├── README.md            （隐私说明：此目录放你的个人数据，勿分享）
│   │   └── 00-我的信息.md        （空白个人信息引导表：家庭/收入/账户/目标四节，全空待填）
│   └── skills-overrides/        （需改写的 skill 的 community 版，如 wealth-advise）
├── staging/                     （构建中间产物，gitignore）
└── wealth-llm-wiki.zip          （tutorial 模式产物）
```

**用法**：`./make-zip.sh tutorial` 或 `./make-zip.sh community`

**tutorial 模式**：
1. 清空 staging/wealth-llm-wiki/
2. 拷 wealth 仓库 `wiki/` → staging（排除 `.obsidian`）
3. 拷 templates/output-template/ → staging/output/
4. 安全断言（见下）
5. zip → `wealth-kb/wealth-llm-wiki.zip`

**community 模式**：
1. 清空并重建 `community/财富管理/财富知识库/`
2. 拷入：
   - `templates/README-community.md` → `README.md`
   - `templates/CLAUDE-community.md` → `CLAUDE.md`
   - wealth 仓库 `raw_material/` 全量，但 `_audit/` 只留 2 个样例（1 个单文件审计 + 1 个 freshness 扫描），`_meta/` 不拷
   - wealth 仓库 `wiki/`
   - `templates/output-template/` → `output/`
   - wealth 仓库 `.claude/skills/` 中 5 个：wealth-advise、wealth-audit、wealth-extract、wealth-freshness、wealth-sync（排除 git-commit-push、wealth-log）；有 override 的用 templates/skills-overrides/ 版本
3. 安全断言

**安全断言**（两模式必跑，失败即 abort 非零退出）：
- 产物中 grep 个人特征：`YANZHAO|austin.xyz@gmail|Lorraine Roth|Austin Roth` 及 output/ 真实文件名清单（我的情况/净资产追踪/资产全景等）→ 0 命中
- 产物中不存在 `.git/`、`.obsidian/`、`.superpowers/`、`_meta/`
- tutorial zip 内不存在 `raw_material/`（结构 C）

---

## 二、教程 zip 发布链路（不变）

1. `make-zip.sh tutorial` 生成新 zip
2. ai-course `portal/build.sh`（已有第 62 行 cp）→ course-portal → Cloudflare staging
3. staging 验证下载链接
4. `promote.sh` → GitHub Pages prod

prod/staging 天然分离：zip 跟站点同一条 staging→promote 流水线。

---

## 三、教程 HTML 改动（最小）

文件：`C:\Users\lorra\projects\blogs\static\wealth-guide.html`

1. 下载区（约 line 154 附近）加一行更新说明：`知识库 2026-07 更新：全库事实审计、时效标注、条目重建（年金/IUL/Roth-IRA）`
2. FAQ "知识库会更新吗" 条目刷新日期表述
3. 不改结构、不改 Prompt 区（zip 结构 C 与原教程一致）

---

## 四、Community 包内容

### 裁剪版 CLAUDE.md（templates/CLAUDE-community.md）

- **保留**：三层知识库概念（raw_material → wiki → output）、raw_material schema 全套（freshness 分级表）、wiki schema、命名约定、skill 触发说明表
- **改写**：隐私节 → "个人数据（持仓/金额/账户）只放 `output/`；若用 git，把 output/ 加入 .gitignore；永不分享此目录"
- **去掉**：Quartz 强制全路径 WikiLink（改一句"建议用完整路径便于将来发布"）、Git 推送检查、publish/ 目录、目录速查里的个人目录

### 使用手册（templates/README-community.md）

1. 这是什么（一段话 + 知识库统计：~80 raw + ~105 wiki 条目）
2. 快速开始：装 Claude Code → `cd 财富知识库` → `claude`
3. 5 个 skill 用法表：

| Skill | 场景 | 示例 |
|-------|------|------|
| /wealth-advise | 基于你的 output/ 个人数据要建议 | /wealth-advise 退休规划 |
| /wealth-extract | 收藏了好文章要入库 | /wealth-extract raw_material/xxx.md |
| /wealth-sync | raw_material 更新后同步 wiki | /wealth-sync wiki/账户类型/Roth-IRA.md |
| /wealth-audit | 检查文件质量 | /wealth-audit raw_material/税务基础/AMT.md |
| /wealth-freshness | 检查知识过期 | /wealth-freshness |

4. 推荐工作流两条：咨询流（填 output → advise）、贡献流（extract → audit → 分享回小组）
5. 隐私提醒
6. 贡献方式

### skills-overrides

- 检查 wealth-advise（及其他 4 个）SKILL.md 是否含指向个人文件的硬路径（如 output/投资策略/我的情况.md）→ 有则做 community 版：改成"读取 output/ 下你的个人信息文件"
- 无个人引用的 skill 直接拷原版

### 顶层文件更新

- `community/财富管理/README.md`：内容列表填上——skills 节写"见 财富知识库/.claude/skills/（5 个）"；prompts 节列 8 个；新增 财富知识库 节
- `community/财富管理/prompts/`：8 个场景 prompt 从 wealth-guide.html 提取，各存独立 .md（退休规划评估/FIRE 分析/资产配置/退休税务/中美跨境/教育储蓄/保险评估/综合诊断——以 HTML 实际 8 个为准）
- 顶层 `skills/` 留空（README 指向，避免双份维护）

---

## 五、验证

1. `make-zip.sh tutorial`：解压 zip 核对结构 = wiki/ + output/ 两目录；安全断言通过
2. `make-zip.sh community`：`cd 财富知识库 && claude` 冒烟——5 个 skill 可被识别（/wealth-freshness 跑一次扫描）
3. 安全复查：对两产物独立跑一次个人特征 grep（脚本外再人工抽查 output-template、CLAUDE.md）
4. staging 部署后实际下载 zip 验证

---

## 范围外

- 教程 HTML 大改版（结构 C 保持不变）
- community 其他子目录（金融分析/内容创作等）
- zip 的版本号机制（文件名不变，靠教程内日期说明）
- wealth 仓库本身的任何内容改动
