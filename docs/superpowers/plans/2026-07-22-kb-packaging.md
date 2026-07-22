# 知识库对外打包实施计划（教程 zip + 兴趣小组共享）

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 建教程 zip 打包脚本（wealth 仓库内）、更新发布链路与教程页、让兴趣小组学员直接使用 GitHub repo 并配好使用手册。

**Architecture:** 四个仓库/目录各一块——wealth 仓库加 `packaging/` 脚本与模板并调整 README/skill 措辞；ai-course 的 build.sh 改一行 zip 源路径；blogs 的教程 HTML 加更新说明；community/财富管理 放使用手册 + 8 个 prompt。

**Tech Stack:** bash（Git Bash）、zip（Windows 下用 `python -m zipfile` 或 7z 兜底）、Markdown。

## Global Constraints

- 教程 zip 结构 = `wiki/ + output/`（无 raw_material，无 CLAUDE.md）——spec 结构 C
- 安全 deny-list（zip 产物 0 命中，命中即 abort）：`YANZHAO`、`austin.xyz@gmail`、`Lorraine Roth`、`Austin Roth`、`我的现金和投资`、`投资持仓快照`、`我的退休基金`、`净资产追踪`（作为文件名）、`资产全景`（作为文件名）、`EBAY持仓分析`
- zip 产物不含 `.git/`、`.obsidian/`、`.superpowers/`、`raw_material/`
- `dist/` 加入 wealth 仓库 .gitignore（产物不入库）
- community 学员核心 skill 为 5 个：wealth-advise / wealth-audit / wealth-extract / wealth-freshness / wealth-sync（git-commit-push、wealth-log 保留在 repo 但手册不提）
- 不做 CLAUDE.md 裁剪版；不改教程 HTML 结构与 Prompt 区
- wealth 仓库操作不得 `git add output/`
- ai-course build.sh 新路径：`$HERE/../../personal/wealth/dist/wealth-llm-wiki.zip`

---

### Task 1: wealth 仓库打包脚本 + 模板 + 首次构建

**Files:**
- Create: `packaging/make-zip.sh`
- Create: `packaging/templates/output-template/README.md`
- Create: `packaging/templates/output-template/00-我的信息.md`
- Modify: `.gitignore`（加 `dist/`）

**Interfaces:**
- Produces: `dist/wealth-llm-wiki.zip`（Task 2 的 build.sh 消费此路径）

- [ ] **Step 1: 写 output 模板两个文件**

`packaging/templates/output-template/README.md`：

```markdown
# output/ — 你的个人数据目录

这个目录用来存放**你自己的**财务信息（收入、持仓、账户、目标）。

- ⚠️ 本目录内容只应存在于你自己的电脑上，不要分享、不要上传
- 如果你用 git 管理，请确认 `.gitignore` 里有 `output/`
- Claude 回答个人化问题时会读取这里的文件，填得越具体，建议越有针对性

从 `00-我的信息.md` 开始填写。
```

`packaging/templates/output-template/00-我的信息.md`：

```markdown
# 我的基本信息

> 按实际情况填写，可以先填一部分。数字不必精确到个位。

## 家庭状况
- 年龄段：
- 家庭成员（配偶/子女年龄）：
- 所在州：
- 身份状态（公民/绿卡/H1B/其他）：

## 收入与支出
- 家庭年收入（税前）：
- 每月大致开支：
- 主要收入构成（工资/RSU/其他）：

## 账户与资产
- 401K 余额（税前/Roth 分别）：
- IRA 余额：
- 应税投资账户市值：
- 现金/存款：
- 房产（自住/投资，市值与贷款）：
- 其他资产（529/HSA/加密等）：

## 目标与关注
- 计划退休年龄：
- 最关心的问题（例：要不要做 Backdoor Roth / RSU 怎么卖 / 何时买房）：
```

- [ ] **Step 2: 写 make-zip.sh**

```bash
#!/usr/bin/env bash
set -euo pipefail
# 构建教程 zip：wiki/ + output/ 模板 → dist/wealth-llm-wiki.zip
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
STAGING="$ROOT/dist/staging/wealth-llm-wiki"
ZIP="$ROOT/dist/wealth-llm-wiki.zip"

rm -rf "$ROOT/dist/staging" "$ZIP"
mkdir -p "$STAGING"

# 1. wiki 全量
cp -r "$ROOT/wiki" "$STAGING/wiki"
# 2. output 模板
cp -r "$HERE/templates/output-template" "$STAGING/output"

# 3. 安全断言
DENY='YANZHAO|austin\.xyz@gmail|Lorraine Roth|Austin Roth|我的现金和投资|投资持仓快照|我的退休基金|EBAY持仓分析'
if grep -rEl "$DENY" "$STAGING" >/dev/null 2>&1; then
  echo "ABORT: 个人特征命中："; grep -rEl "$DENY" "$STAGING"; exit 1
fi
for BAD in .git .obsidian .superpowers raw_material 净资产追踪.md 资产全景.md; do
  if find "$STAGING" -name "$BAD" | grep -q .; then
    echo "ABORT: 禁止内容混入: $BAD"; exit 1
  fi
done

# 4. 打 zip（python 保证 Windows 可用 + UTF-8 文件名）
( cd "$ROOT/dist/staging" && python -c "
import shutil
shutil.make_archive(r'$ROOT/dist/wealth-llm-wiki', 'zip', '.', 'wealth-llm-wiki')
" )
rm -rf "$ROOT/dist/staging"
echo "OK: $ZIP"
python -c "
import zipfile
z = zipfile.ZipFile(r'$ZIP')
names = z.namelist()
print(f'{len(names)} entries')
assert any(n.startswith('wealth-llm-wiki/wiki/') for n in names)
assert any(n.startswith('wealth-llm-wiki/output/') for n in names)
assert not any('raw_material' in n for n in names)
print('structure check pass')
"
```

- [ ] **Step 3: .gitignore 加 `dist/`**

在 wealth 仓库 `.gitignore` 末尾加一行 `dist/`。

- [ ] **Step 4: 运行验证**

Run: `cd /c/Users/lorra/projects/personal/wealth && bash packaging/make-zip.sh`
Expected: `OK: .../dist/wealth-llm-wiki.zip` + `structure check pass`

- [ ] **Step 5: Commit**

```bash
git add packaging .gitignore
git status --short | grep output/ && echo STOP || git commit -m "feat(packaging): add tutorial zip build script and output templates"
```

---

### Task 2: ai-course build.sh 路径切换

**Files:**
- Modify: `C:\Users\lorra\projects\ai-course\portal\build.sh:62`

**Interfaces:**
- Consumes: Task 1 的 `personal/wealth/dist/wealth-llm-wiki.zip`

- [ ] **Step 1: 改第 62 行**

```bash
# 旧
cp "$HERE/../../wealth-kb/wealth-llm-wiki.zip"                           "$DEST/dl/" 2>/dev/null || echo "WARN: llm-wiki zip 缺"
# 新
cp "$HERE/../../personal/wealth/dist/wealth-llm-wiki.zip"                "$DEST/dl/" 2>/dev/null || echo "WARN: llm-wiki zip 缺"
```

- [ ] **Step 2: 验证路径解析**

Run: `ls "C:\Users\lorra\projects\ai-course\portal\..\..\personal\wealth\dist\wealth-llm-wiki.zip"`
Expected: 文件存在（Task 1 已构建）

- [ ] **Step 3: Commit（ai-course 仓库）**

```bash
cd "C:\Users\lorra\projects\ai-course" && git add portal/build.sh && git commit -m "fix(portal): source wealth zip from wealth repo dist (wealth-kb retired)"
```

---

### Task 3: 教程 HTML 更新说明

**Files:**
- Modify: `C:\Users\lorra\projects\blogs\static\wealth-guide.html`（下载区 ~line 154-158；FAQ ~line 516）

- [ ] **Step 1: 下载按钮附近加更新说明**

在 line 158 `<p>浏览器会自动保存...` 之后插入（沿用页面已有的提示样式，读上下文选 class，如无合适 class 用普通 `<p>` 加内联轻样式）：

```html
<p style="color:#2d6a4f;font-size:0.9em">🆕 知识库 2026-07 更新：全库事实审计、时效标注、条目重建（年金 / IUL / Roth IRA）。老用户重新下载后替换 wiki/ 文件夹即可。</p>
```

- [ ] **Step 2: FAQ "会更新吗" 条目**（~line 516）刷新表述

在该 FAQ 答案末尾追加一句：`最近一次更新：2026-07（全库审计版）。`

- [ ] **Step 3: 浏览器目检**

打开 `C:\Users\lorra\projects\blogs\static\wealth-guide.html` 确认两处渲染正常、不破版式。

- [ ] **Step 4: Commit（blogs 仓库）**

```bash
cd "C:\Users\lorra\projects\blogs" && git add static/wealth-guide.html && git commit -m "docs: note 2026-07 knowledge base update in wealth guide"
```

---

### Task 4: wealth repo 学员友好化（README 节 + skill 措辞）

**Files:**
- Modify: `README.md`（wealth 仓库）
- Modify: `.claude/skills/wealth-advise/SKILL.md`（去个人文件名硬引用）

- [ ] **Step 1: README.md 增加学员节**

先 Read 现有 README.md，在合适位置（简介之后）插入：

```markdown
## 🎓 兴趣小组学员看这里

3 步开始：

1. 安装 [Claude Code](https://claude.com/claude-code)
2. `git clone https://github.com/austinxyz/wealth-llm-wiki && cd wealth-llm-wiki`
3. 运行 `claude`，然后试试 `/wealth-freshness`（扫描知识时效）

核心 skill 共 5 个：`/wealth-advise`（个人化建议）、`/wealth-extract`（文章入库）、`/wealth-sync`（同步 wiki）、`/wealth-audit`（质量审计）、`/wealth-freshness`（时效扫描）。

你的个人财务数据放 `output/` 目录（已被 .gitignore，永不会被提交）。详细工作流见兴趣小组的《使用手册》。

更新知识库：`git pull`。欢迎 PR 贡献条目。
```

- [ ] **Step 2: wealth-advise SKILL.md 通用化**

该文件 line 24-30 的主题映射表引用了个人文件名（我的退休基金.md、投资持仓快照.md 等）。将第三列改为通用描述，例如：

```markdown
| 主题 | 读取 wiki | 读取 output/（你的个人文件） |
|------|----------|------------------------------|
| 税务优化 / 税损收割 | wiki/税务策略/* | 你的持仓与交易记录文件 |
| Roth IRA / 退休账户 | wiki/账户类型/Roth-IRA.md, wiki/账户类型/401K.md | 你的退休账户信息文件 |
| 退休规划 | wiki/退休规划/* | 你的退休规划/目标文件 |
| 投资配置 / 持仓 | wiki/投资品种/*, wiki/账户类型/* | 你的持仓快照与投资策略文件 |
| 现金管理 / SGOV | wiki/账户类型/SGOV.md | 你的现金与账户分布文件 |
| IUL / 保险 | wiki/投资品种/IUL.md | 你的保单分析文件 |
| 中美 / 双边 | wiki/中美对比/* | 你的跨境资产信息文件 |
```

同时全文 Grep `我的|OKLO|EBAY` 等个人痕迹，一并通用化（保持 skill 逻辑不变）。其余 4 个 skill 各 Grep 一遍 `output/我的|我的情况|持仓快照`，有命中同样处理。

- [ ] **Step 3: 验证**

Run: `grep -rE "我的退休基金|投资持仓快照|我的现金和投资|EBAY" .claude/skills/ || echo CLEAN`
Expected: `CLEAN`

- [ ] **Step 4: Commit + push（wealth 仓库——学员通过 GitHub 消费，需 push）**

```bash
git add README.md .claude/skills && git status --short | grep output/ && echo STOP || git commit -m "docs: add community quickstart to README and generalize skill wording" && git push
```

---

### Task 5: community/财富管理 内容

**Files:**
- Create: `C:\Users\lorra\projects\community\财富管理\财富知识库\使用手册.md`
- Modify: `C:\Users\lorra\projects\community\财富管理\README.md`
- Create: `C:\Users\lorra\projects\community\财富管理\prompts\*.md`（8 个）

- [ ] **Step 1: 写使用手册.md**

```markdown
# 财富知识库使用手册

北美华人理财知识库 + Claude Code skills。约 80 篇原始资料（raw_material）、105 个知识条目（wiki）、5 个配套 skill。全部内容带来源与时效标注，2026-07 完成全库事实审计。

## 快速开始

1. 安装 [Claude Code](https://claude.com/claude-code)（需要 Claude 订阅）
2. 克隆知识库：
   ```
   git clone https://github.com/austinxyz/wealth-llm-wiki
   cd wealth-llm-wiki
   ```
   （不会 git？GitHub 页面 Code → Download ZIP 解压也行，但以后更新要重下）
3. 启动：`claude`
4. 试一下：输入 `/wealth-freshness`，看知识库时效扫描报告

## 5 个 Skill

| Skill | 什么时候用 | 示例 |
|-------|-----------|------|
| `/wealth-advise <主题>` | 想要基于你个人情况的建议 | `/wealth-advise 退休规划` |
| `/wealth-extract <文件>` | 收藏了好文章，想提炼进知识库 | `/wealth-extract raw_material/税务基础/新文章.md` |
| `/wealth-sync <wiki条目>` | 原始资料更新了，同步到 wiki | `/wealth-sync wiki/账户类型/Roth-IRA.md` |
| `/wealth-audit <文件>` | 检查一篇资料的质量（联网核对官方数据） | `/wealth-audit raw_material/税务基础/AMT.md` |
| `/wealth-freshness` | 检查哪些知识过期了 | `/wealth-freshness` |

## 两条推荐工作流

**咨询流（把它当你的私人顾问）**
1. 打开 `output/00-我的信息.md`（没有就新建 output/ 目录），填入你的家庭/收入/账户/目标
2. `/wealth-advise 退休规划`（或任何主题）——Claude 结合知识库和你的信息给个性化建议

**贡献流（一起完善知识库）**
1. 看到好文章 → 存为 `raw_material/<分类>/文件名.md`
2. `/wealth-extract` 提炼成 wiki 条目
3. `/wealth-audit` 质检（联网核对数字）
4. 群里分享，或直接在 GitHub 提 PR

## 隐私必读

- 你的个人数据**只放 `output/` 目录**——repo 已配置 .gitignore，这个目录永远不会被提交/上传
- 不要把带个人金额的内容写进 wiki/ 或 raw_material/
- `/wealth-advise` 生成的建议默认也存 output/

## 保持最新

```
git pull
```

知识库持续维护中（税务数字每年更新）。有问题群里说。
```

- [ ] **Step 2: 从 wealth-guide.html 提取 8 个 prompt**

Read `C:\Users\lorra\projects\blogs\static\wealth-guide.html` line 360-500 区域，找到全部 `prompt-body` 块（约 8 个：综合诊断、退休规划评估、FIRE 分析、资产配置、退休税务策略、中美跨境、教育 vs 退休、保险评估——以 HTML 实际为准）。每个存为 `prompts/<两位序号>-<主题>.md`，格式：

```markdown
# <主题名>

> 复制下面内容粘贴给 Claude（需已按使用手册填写 output/ 个人信息）

<prompt 原文>
```

- [ ] **Step 3: 更新 README.md 内容列表**

```markdown
# 财富管理

北美华人理财/税务/保险/退休规划，Claude Code 知识库。

## 目录说明
- `财富知识库/` — 知识库使用手册（知识库本体在 [GitHub](https://github.com/austinxyz/wealth-llm-wiki)，clone 即用）
- `skills/` — （空）wealth 系列 skill 随知识库 repo 分发，见 `财富知识库/使用手册.md`
- `prompts/` — 8 个理财咨询场景 prompt 模板，复制后直接用
- `wiki/` — 零散知识条目分享区
- `笔记/` — 会议记录、idea、心得体会

## 内容列表

### 财富知识库
- [使用手册](财富知识库/使用手册.md) — clone → Claude Code 打开 → 用 skill 完善知识库

### prompts
- 01-综合诊断 … 08-保险评估（8 个，见 prompts/ 目录）

### wiki
（暂无）

### 笔记
（暂无）
```

（prompts 列表按 Step 2 实际文件名写全 8 行。）

- [ ] **Step 4: 验证**

Run: `ls "C:\Users\lorra\projects\community\财富管理\prompts" | wc -l`
Expected: 8

community 目录如果是 git 仓库则 commit：`git add 财富管理 && git commit -m "feat: add wealth KB manual and prompt templates"`；不是 git 仓库则跳过。

---

### Task 6: 端到端验证

**Files:** 无新文件（验证任务）

- [ ] **Step 1: fresh clone 冒烟**

```bash
cd "$TMPDIR" 2>/dev/null || cd /tmp
rm -rf kb-smoke && git clone --depth 1 https://github.com/austinxyz/wealth-llm-wiki kb-smoke
ls kb-smoke/.claude/skills          # 期望含 5+ 个 wealth skill
ls kb-smoke/output 2>/dev/null      # 期望：不存在（gitignore 生效）
grep -rE "YANZHAO|austin\.xyz@gmail" kb-smoke --include="*.md" | grep -v _audit || echo CLEAN
```

Expected: skills 在、无 output、CLEAN（_audit 报告若含邮箱等需人工看一眼——不应有）

- [ ] **Step 2: zip 内容复查**

```bash
cd /c/Users/lorra/projects/personal/wealth && python -c "
import zipfile
z = zipfile.ZipFile('dist/wealth-llm-wiki.zip')
tops = {n.split('/')[1] for n in z.namelist() if n.count('/')>=1}
print(sorted(tops))"
```

Expected: `['output', 'wiki']`

- [ ] **Step 3: staging 发布（可选，需要用户在场）**

提示用户：运行 ai-course `portal/build.sh` 部署 staging，实际下载 `https://<staging域名>/dl/wealth-llm-wiki.zip` 验证，之后 `promote.sh` 上 prod。此步交给用户执行，不自动做。

---

## Self-Review

- Spec 覆盖：脚本+模板（T1）、build.sh（T2）、教程 HTML（T3）、repo 学员化+skill 措辞（T4）、community 手册+prompts+README（T5）、验证（T6）✅
- 占位符：无 TBD；模板/手册/README 全文给出；prompts 从 HTML 提取有明确定位与格式 ✅
- 一致性：zip 路径 `dist/wealth-llm-wiki.zip` 在 T1/T2/T6 一致；deny-list 与 spec 一致；5 个 skill 名单一致 ✅
- 跨仓库 commit 各自独立（wealth push、ai-course/blogs 只 commit 不 push——发布由用户走 build/promote 流程）✅
