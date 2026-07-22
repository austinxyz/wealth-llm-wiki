# 知识库对外打包设计文档（教程 zip + 兴趣小组共享）

**日期**：2026-07-22（修订版：community 改为直接用 GitHub repo）
**状态**：已确认，待实施

---

## 目标

把治理完成的知识库（raw_material + wiki，2026-07 审计版）交付给两类受众：

1. **教程读者**（Claude Desktop 用户）：更新 `wealth-llm-wiki.zip`，走原有 learn.austinxyz.ai 发布链路
2. **兴趣小组学员**（Claude Code 用户）：直接使用 public GitHub repo `austinxyz/wealth-llm-wiki`（clone 即用，pull 即更新），`community/财富管理/` 只放使用手册与索引

**关键事实**：wealth 仓库本身就是 public repo，`output/` 被 gitignore 从未公开——学员用 repo 无隐私风险；唯一需要打包的是教程 zip（结构裁剪）。

**硬约束**：教程 zip 不得含个人数据；不含 raw_material（结构 C：wiki + output 模板）。

---

## 一、打包脚本（wealth 仓库内，替代原 wealth-kb 方案）

```
wealth 仓库新增：
├── packaging/
│   ├── make-zip.sh              （教程 zip 构建脚本）
│   └── templates/
│       └── output-template/
│           ├── README.md        （隐私说明：此目录放你的个人数据，勿分享）
│           └── 00-我的信息.md    （空白引导表：家庭/收入/账户/目标四节）
└── dist/                        （产物目录，加入 .gitignore）
    └── wealth-llm-wiki.zip
```

**make-zip.sh 流程**：
1. 清空 dist/staging/wealth-llm-wiki/
2. 拷 `wiki/` → staging（排除 `.obsidian` 相关）
3. 拷 packaging/templates/output-template/ → staging/output/
4. 安全断言（失败即 abort 非零退出）：
   - grep 个人特征：个人特征正则（真名/邮箱/个人文件名等，维护在未入库的 packaging/deny-list.local）→ 0 命中
   - 不存在 `.git/`、`.obsidian/`、`.superpowers/`、`raw_material/`
5. zip → `dist/wealth-llm-wiki.zip`

**ai-course 联动改一行**：`portal/build.sh` 第 62 行

```bash
# 旧：cp "$HERE/../../wealth-kb/wealth-llm-wiki.zip" "$DEST/dl/" ...
# 新：cp "$HERE/../../personal/wealth/dist/wealth-llm-wiki.zip" "$DEST/dl/" ...
```

wealth-kb 目录彻底退役（本就已丢失）。

---

## 二、教程 zip 发布链路（不变）

1. `packaging/make-zip.sh` 生成 dist/ 下新 zip
2. ai-course `portal/build.sh` → course-portal → Cloudflare staging
3. staging 验证下载
4. `promote.sh` → GitHub Pages prod

prod/staging 天然分离（zip 跟站点同一条 staging→promote 流水线）。

---

## 三、教程 HTML 改动（最小）

文件：`C:\Users\lorra\projects\blogs\static\wealth-guide.html`

1. 下载区（约 line 154）加一行：`知识库 2026-07 更新：全库事实审计、时效标注、条目重建（年金/IUL/Roth-IRA）`
2. FAQ "知识库会更新吗" 刷新日期表述
3. 不改结构、不改 Prompt 区

---

## 四、兴趣小组：直接用 GitHub repo

**学员入口**：`git clone https://github.com/austinxyz/wealth-llm-wiki`（或 GitHub Download ZIP）→ `cd wealth-llm-wiki && claude`。repo 已含 CLAUDE.md、5 个 wealth skill、raw_material（含 _audit 审计报告实例）、wiki。`git pull` 即同步更新，可提 PR 贡献。

**repo 内调整**：
- `README.md` 增加"🎓 兴趣小组学员看这里"节：3 步快速开始 + 指向使用手册
- git-commit-push / wealth-log 两个 skill 保留在 repo（手册说明学员核心用 5 个，不影响）
- 检查 5 个 wealth skill 的 SKILL.md 是否含指向个人 output 文件的硬路径（如"我的情况.md"）→ 有则改为通用表述（"output/ 下你的个人信息文件"）——这是对 repo 源文件的改进，不是 fork

**community/财富管理/ 更新**：

```
community/财富管理/
├── README.md          （更新：内容列表 + 指向 repo）
├── 财富知识库/
│   └── 使用手册.md     （唯一文件：clone → 打开 → 工作流）
├── prompts/           （8 个场景 prompt，从 wealth-guide.html 提取，各存独立 .md）
├── skills/            （留空，README 说明 skill 在 repo 的 .claude/skills/）
└── 笔记/               （不动）
```

**使用手册.md 内容**：
1. 这是什么（一段话 + 统计：~80 raw_material + ~105 wiki 条目 + 5 个 skill）
2. 快速开始：装 Claude Code → clone repo → `claude`
3. 5 个 skill 用法表：

| Skill | 场景 | 示例 |
|-------|------|------|
| /wealth-advise | 基于你的 output/ 个人数据要建议 | /wealth-advise 退休规划 |
| /wealth-extract | 收藏了好文章要入库 | /wealth-extract raw_material/xxx.md |
| /wealth-sync | raw_material 更新后同步 wiki | /wealth-sync wiki/账户类型/Roth-IRA.md |
| /wealth-audit | 检查文件质量 | /wealth-audit raw_material/税务基础/AMT.md |
| /wealth-freshness | 检查知识过期 | /wealth-freshness |

4. 两条推荐工作流：咨询流（建 output/ 填个人信息 → /wealth-advise）、贡献流（/wealth-extract → /wealth-audit → PR 或群里分享）
5. 隐私提醒：个人数据只放 output/（repo 已 gitignore），clone 后本地填写，永不 push
6. 更新方式：`git pull`

---

## 五、验证

1. `make-zip.sh`：解压 zip 核对 = wiki/ + output/ 两目录；安全断言通过
2. 教程链路：build.sh 后 staging 下载实测
3. repo 冒烟：新目录 clone 一份 → `claude` → 5 个 skill 可识别（/wealth-freshness 跑一次）
4. 人工复查：output-template、README 学员节无个人信息

---

## 范围外

- 教程 HTML 大改版
- community 其他子目录
- zip 版本号机制（靠教程内日期说明）
- repo 的 CLAUDE.md 裁剪（学员直接用完整版——publish/Quartz 等节对学员无害，保持单版本免维护）
