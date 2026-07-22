# 知识库质量审计与时效性管理实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 为知识库建立元数据 schema、`/wealth-audit` 与 `/wealth-freshness` 两个 skill，并完成存量文件标注与首轮治理。

**Architecture:** 三阶段——Phase 1 schema 定义 + 存量批量标注；Phase 2 建两个 SKILL.md；Phase 3 首轮运行（freshness 扫描 + 全库审计）。纯 Markdown/文档项目，无代码测试；每个任务用"验证步骤"代替单元测试。

**Tech Stack:** Obsidian Markdown + YAML frontmatter；Claude Code skills（`.claude/skills/*/SKILL.md`，与现有 wealth-* skill 同目录）；验证用 PowerShell/Grep。

## Global Constraints

- 新 skill 放在项目内 `.claude/skills/`（与 wealth-advise/wealth-sync 同级），**不是** `~/.claude/skills/`（spec 中写 `~/.claude` 是笔误，现有 wealth skill 全在项目内）
- freshness 三级：`evergreen`（valid_until 留空）/ `annual`（当年 12-31）/ `volatile`（收集日 + 6 个月）
- raw_material frontmatter 字段：`title` / `collected` / `source_url` / `freshness` / `valid_until` / `tax_year`（可选）
- wiki 只新增 `freshness` 一个字段，其余 frontmatter 不动
- `output/` 与 `publish/` 不参与；绝不 `git add output/`
- 审计报告目录：`raw_material/_audit/`（入库）
- 所有 WikiLink 带完整路径前缀（CLAUDE.md 规范）
- 存量标注不修改文件正文，只加/改 frontmatter

---

### Task 1: CLAUDE.md 写入 schema 规范

**Files:**
- Modify: `CLAUDE.md`（"Wiki 条目 Schema" 节之后新增一节）

**Interfaces:**
- Produces: schema 文本，Task 2/3/4/5 的标注和 skill 逻辑都以此为准

- [ ] **Step 1: 在 CLAUDE.md 的 "### Wiki 条目 Schema（严格遵守）" 节之前插入新节**

插入内容（放在 "### 隐私" 节之后）：

```markdown
### Raw Material 元数据 Schema（严格遵守）

每个 `raw_material/**/*.md` 必须有统一 frontmatter：

​```yaml
---
title: <文件主题>
collected: YYYY-MM-DD           # 收集日期
source_url:                      # 来源 URL 列表（尽量含官方来源）
  - https://www.irs.gov/...
freshness: <evergreen | annual | volatile>
valid_until: YYYY-MM-DD          # annual/volatile 必填；evergreen 留空
tax_year: YYYY                   # 可选，税务数字类文件专用
---
​```

**freshness 分级**：

| 级别 | 含义 | 例子 | valid_until |
|------|------|------|------|
| `evergreen` | 概念性知识，基本不变 | 4% 规则、Bucket Strategy | 留空 |
| `annual` | 每年固定更新 | 税阶、标准扣除、IRA/401K limit | 当年 12-31 |
| `volatile` | 随政策随时可能变 | OBBBA 新规、购汇额度、Medicare 保费 | 收集日 + 6 个月 |

wiki 条目 frontmatter 相应新增一个字段：`freshness`，继承自 source 的 raw_material（多来源取最不稳定档：volatile > annual > evergreen）。

配套 skill：`/wealth-audit <文件>`（四维质量审计）、`/wealth-freshness [--update]`（时效扫描与更新）。审计报告写入 `raw_material/_audit/`。
​```
```

（注：实际写入时去掉 ​``` 的零宽转义，用正常代码块。）

- [ ] **Step 2: 验证**

Run: `Grep pattern="Raw Material 元数据 Schema" path="CLAUDE.md"`
Expected: 命中 1 处

- [ ] **Step 3: Commit**

```bash
git add CLAUDE.md
git commit -m "docs: add raw_material metadata schema to CLAUDE.md"
```

---

### Task 2: 批量标注 raw_material 存量文件（~90 个）

**Files:**
- Modify: `raw_material/**/*.md` 全部（只加/改 frontmatter，不动正文）

**Interfaces:**
- Consumes: Task 1 的 schema 定义
- Produces: 全部 raw_material 带合规 frontmatter，供 Task 5 扫描

- [ ] **Step 1: 列出全部文件并按目录分批**

Run（PowerShell）: `Get-ChildItem -Recurse -Filter *.md raw_material | Select-Object -ExpandProperty FullName`
按子目录分批处理（税务基础、退休账户、跨境税务……每批一个目录）。

- [ ] **Step 2: 逐批标注**

对每个文件：
1. Read 全文，判断主题
2. 判定 freshness：
   - 含具体年度数字（税阶、限额、FPL、保费）→ `annual`，`valid_until` = 数字适用年度的 12-31（如 tax_year 2026 → `2026-12-31`）
   - 政策类、新法案解读、汇率/额度类 → `volatile`，`valid_until` = collected + 6 个月
   - 纯概念/方法论 → `evergreen`，`valid_until` 留空
3. `collected`：文件正文有"收集日期"用它；没有用 git 首次提交日期（`git log --diff-filter=A --format=%as -- <file>`）
4. `source_url`：正文"来源"节有 URL 就提入 frontmatter；没有则留空列表并在后续 audit 中补
5. 已有 frontmatter 的文件：合并字段，不删已有字段
6. Edit 写入 frontmatter

- [ ] **Step 3: 每批完成后抽查报告**

每完成一个目录，输出该目录标注汇总表（文件 / freshness / valid_until），供用户抽查纠错。

- [ ] **Step 4: 全部完成后验证**

Run（PowerShell）:
```powershell
Get-ChildItem -Recurse -Filter *.md raw_material | Where-Object { (Get-Content $_.FullName -TotalCount 1) -ne '---' } | Select-Object -ExpandProperty FullName
```
Expected: 空输出（所有文件都以 frontmatter 开头）

Run: `Grep pattern="^freshness:" path="raw_material" output_mode="count"`
Expected: 计数 ≈ 文件总数（每文件 1 个）

- [ ] **Step 5: Commit（每批一个 commit）**

```bash
git add raw_material/<目录>
git status | grep output/ && echo "STOP" || git commit -m "chore(raw): add freshness metadata to <目录>"
```

---

### Task 3: wiki 条目补 freshness 字段（~120 个）

**Files:**
- Modify: `wiki/**/*.md`（除 `00-MOC-*.md`；只在 frontmatter 加一行）

**Interfaces:**
- Consumes: Task 2 完成的 raw_material freshness 值
- Produces: wiki 全带 freshness，供 Task 5 跨层关联

- [ ] **Step 1: 对每个 wiki 条目推导 freshness**

1. Read frontmatter 的 `source` 字段 → 定位 raw_material 文件
2. 读该 raw_material 的 `freshness`，继承（多来源取最不稳定档：volatile > annual > evergreen）
3. source 缺失或指向不存在文件 → 按条目内容自行判定，并在汇总里标 ⚠️ source 断链
4. Edit：在 `status:` 行后加 `freshness: <值>`

- [ ] **Step 2: 验证**

Run: `Grep pattern="^freshness:" path="wiki" output_mode="count"`
Expected: ≈ 条目数（MOC 页除外）

- [ ] **Step 3: 输出断链清单**

列出所有 ⚠️ source 断链的条目，供用户后续修复（不阻塞本任务）。

- [ ] **Step 4: Commit**

```bash
git add wiki
git status | grep output/ && echo "STOP" || git commit -m "chore(wiki): add freshness field inherited from raw_material"
```

---

### Task 4: 建 `/wealth-audit` skill

**Files:**
- Create: `.claude/skills/wealth-audit/SKILL.md`

**Interfaces:**
- Consumes: Task 1 schema（frontmatter 字段名与 freshness 定义）
- Produces: 可调用的 `/wealth-audit <文件>` 与 `/wealth-audit --all`；报告写入 `raw_material/_audit/<文件名>-audit-YYYY-MM-DD.md`

- [ ] **Step 1: 写 SKILL.md（完整内容如下）**

```markdown
---
name: wealth-audit
description: 对 raw_material 文件做四维质量审计（事实准确/覆盖完整/来源可靠/结构规范），联网核对官方来源，输出评分报告到 raw_material/_audit/。用法：/wealth-audit <raw_material文件路径> 或 /wealth-audit --all
---

# wealth-audit

对 `raw_material/` 文件做质量审计。四维优先级：事实准确 > 覆盖完整 > 来源可靠 > 结构规范。

## 使用方式

​```
/wealth-audit raw_material/税务基础/联邦所得税税阶-2026.md
/wealth-audit --all
​```

## 单文件审计流程

1. **结构规范（D，本地）**
   - 检查 frontmatter：title / collected / source_url / freshness / valid_until 是否齐全、格式正确
   - freshness 与内容是否匹配（含年度数字却标 evergreen → 报错）
   - 缺失项列出，给出建议值

2. **来源可靠（B，本地）**
   - source_url 是否非空
   - 是否含官方域名：irs.gov / ssa.gov / medicare.gov / ftb.ca.gov / dol.gov / sec.gov / treasury.gov / healthcare.gov / coveredca.com
   - 全为二手来源（自媒体/博客/AI 生成）→ ⚠️ 建议补官方来源

3. **事实准确（A，联网，重点）**
   - 提取文件中的关键事实清单：具体数字（税率、门槛、限额、百分比、日期）和规则（资格条件、期限、流程）
   - 每个关键事实用 WebSearch/WebFetch 对照官方来源验证
   - 逐条标注：✅ 确认 / ❌ 有误（附正确值 + 出处 URL）/ ❓ 无法验证
   - 时间敏感数字注意适用年度（2026 数字用 2026 官方文档核对，不要拿 2027 新数字判错）

4. **覆盖完整（C，AI 评估）**
   - 以"资深理财顾问期待这篇主题文章讲什么"为标准，生成该主题核心知识点 checklist（10-20 条）
   - 对照文件逐条判断：已覆盖 / 部分覆盖 / 缺失
   - 缺失项按重要性排序（高/中/低）

## 输出

报告写入 `raw_material/_audit/<文件名>-audit-YYYY-MM-DD.md`：

​```markdown
# 审计报告：<文件名>

**日期**：YYYY-MM-DD
**四维评分**：A 事实 <A-F> ｜ C 覆盖 <A-F> ｜ B 来源 <A-F> ｜ D 结构 <A-F>

## 事实核查
| 事实 | 状态 | 说明 |
|------|------|------|
| ... | ✅/❌/❓ | ... |

## 覆盖缺口（按重要性）
- [高] ...
- [中] ...

## 来源评估
...

## 结构问题
...

## 修复清单
1. ...
​```

报告完成后询问用户：是否按修复清单直接修复原文件？确认后执行修复（修正错误数字、补缺失知识点、补 frontmatter），并更新 `collected` 为今日。

## 批量模式（--all）

1. 遍历 `raw_material/**/*.md`（跳过 `_audit/`），逐文件跑上述流程
2. 联网核对量大 → 每个文件只核对 3-5 个最关键事实，控制成本
3. 汇总表写入 `raw_material/_audit/full-audit-YYYY-MM-DD.md`：文件 × 四维评分矩阵 + 最需修复 Top 10（按 ❌ 数量和重要性排）
4. 批量模式不自动修复，只出报告

## 注意事项

- 审计不修改原文件，除非用户确认修复
- ❌ 判定必须附官方出处 URL，不凭记忆判错
- `_audit/` 报告可入库（不含个人数据）
​```

（写入时把 ​``` 换成正常围栏。）

- [ ] **Step 2: 验证 skill 被识别**

Run: `Glob pattern=".claude/skills/wealth-audit/SKILL.md"`
Expected: 文件存在。frontmatter `name`/`description` 格式与 wealth-sync 一致。

- [ ] **Step 3: 冒烟测试**

调用 `/wealth-audit raw_material/税务基础/联邦所得税税阶-2026.md`，确认：报告生成在 `raw_material/_audit/`、四维评分齐全、事实核查有联网出处。

- [ ] **Step 4: Commit**

```bash
git add .claude/skills/wealth-audit raw_material/_audit
git commit -m "feat(skill): add /wealth-audit quality audit skill"
```

---

### Task 5: 建 `/wealth-freshness` skill

**Files:**
- Create: `.claude/skills/wealth-freshness/SKILL.md`

**Interfaces:**
- Consumes: Task 2/3 的 frontmatter（`freshness` / `valid_until` / wiki `source`）
- Produces: `/wealth-freshness [--update]`；报告写入 `raw_material/_audit/freshness-YYYY-MM-DD.md`

- [ ] **Step 1: 写 SKILL.md（完整内容如下）**

```markdown
---
name: wealth-freshness
description: 扫描知识库时效性——按 frontmatter 的 valid_until 列出已过期/即将过期的 raw_material，反查受影响 wiki 条目；--update 模式联网抓取最新官方数据并更新。用法：/wealth-freshness 或 /wealth-freshness --update
---

# wealth-freshness

知识时效扫描与更新。年度节奏：每年 1 月 IRS 发布新数字后跑 `--update`；平时随手跑扫描。

## 使用方式

​```
/wealth-freshness
/wealth-freshness --update
​```

## 扫描流程（默认，纯本地）

1. **扫 raw_material frontmatter**（跳过 `_audit/`）：
   - 🔴 已过期：`valid_until` < 今天
   - 🟡 即将过期：今天 ≤ `valid_until` < 今天 + 30 天
   - ⚪ 无标注：缺 freshness 或（annual/volatile 却缺 valid_until）
   - 🟢 有效：其余

2. **跨层关联**：对每个 🔴/🟡 文件，Grep wiki 的 `source:` 字段找出引用它的 wiki 条目，列受影响清单

3. **报告**写入 `raw_material/_audit/freshness-YYYY-MM-DD.md`：

​```markdown
# 时效扫描 YYYY-MM-DD

## 🔴 已过期（N）
| 文件 | valid_until | freshness | 受影响 wiki |
|------|------|------|------|

## 🟡 30 天内到期（N）
...

## ⚪ 无标注（N）
...
​```

4. 终端输出摘要（🔴/🟡/⚪ 数量 + 文件清单），并提示：`--update` 可执行更新。

## 更新流程（--update）

先跑扫描，然后对每个 🔴 文件逐个处理：

1. 按 frontmatter `source_url` 用 WebFetch/WebSearch 抓最新官方数据
2. 对比新旧，列出变化点，格式：
   ​```
   📄 raw_material/税务基础/联邦所得税税阶-2026.md
   - 标准扣除 MFJ: $32,200 → $33,100（2027）
   - 37% 档 MFJ 起点: $768,701 → $789,600（2027）
   来源：https://www.irs.gov/...
   ​```
3. **等用户确认**后执行：
   - 更新正文数字与适用年度
   - frontmatter：`collected` 改今日；`valid_until` 顺延（annual → 新年度 12-31；volatile → 今日 + 6 个月）；`tax_year` 更新
   - 文件名含年份的（如 `联邦所得税税阶-2026.md`）询问是否重命名为新年度
4. 更新完成后列出该文件的受影响 wiki 条目，提示逐个运行 `/wealth-sync <wiki条目>` 传播

## 注意事项

- 每个文件更新必须用户确认，不批量静默改
- 官方数据未发布（如 IRS 还没出新年数字）→ 标记"待官方发布"，不强行更新
- ⚪ 无标注文件提示补 frontmatter（可转 /wealth-audit 处理）
- 不做 cron 自动化，手动触发
​```

（写入时把 ​``` 换成正常围栏。）

- [ ] **Step 2: 验证**

Run: `Glob pattern=".claude/skills/wealth-freshness/SKILL.md"`
Expected: 文件存在。

- [ ] **Step 3: 冒烟测试**

调用 `/wealth-freshness`（不带 --update），确认报告生成、四分类计数正确（抽 2-3 个文件人工核对 valid_until 比较逻辑）。

- [ ] **Step 4: Commit**

```bash
git add .claude/skills/wealth-freshness raw_material/_audit
git commit -m "feat(skill): add /wealth-freshness staleness scan skill"
```

---

### Task 6: 首轮时效治理

**Files:**
- Modify: 扫描出的 🔴 过期 raw_material 文件 + 对应 wiki 条目

**Interfaces:**
- Consumes: Task 5 的 `/wealth-freshness --update`
- Produces: 全库无 🔴 文件（或标记"待官方发布"）

- [ ] **Step 1: 运行 `/wealth-freshness --update`**

逐文件确认更新。今天是 2026-07 → annual 类 2026 数字尚在有效期，预计 🔴 主要是 volatile 类（collected + 6 个月已过的）。

- [ ] **Step 2: 对每个更新过的 raw_material，运行 `/wealth-sync <受影响wiki条目>`**

- [ ] **Step 3: Commit**

```bash
git add raw_material wiki
git status | grep output/ && echo "STOP" || git commit -m "chore: first freshness sweep - update stale raw_material and sync wiki"
```

---

### Task 7: 首轮全库质量审计

**Files:**
- Create: `raw_material/_audit/full-audit-YYYY-MM-DD.md`（由 skill 生成）
- Modify: Top 10 问题文件（按用户确认逐个修）

**Interfaces:**
- Consumes: Task 4 的 `/wealth-audit --all`
- Produces: 全库质量基线 + Top 10 修复完成

- [ ] **Step 1: 运行 `/wealth-audit --all`**

生成全库评分矩阵与 Top 10。批量模式每文件只核对 3-5 个关键事实。

- [ ] **Step 2: 向用户展示 Top 10，逐个确认修复**

对确认的文件运行单文件 `/wealth-audit <文件>` 完整流程 + 修复。

- [ ] **Step 3: 修复涉及数字/规则变化的，运行 `/wealth-sync` 传播到 wiki**

- [ ] **Step 4: Commit**

```bash
git add raw_material wiki
git status | grep output/ && echo "STOP" || git commit -m "chore: full-library audit round 1 - fix top issues"
```

---

## Self-Review

- Spec 覆盖：schema（Task 1-3）、/wealth-audit（Task 4）、/wealth-freshness（Task 5）、首轮运行（Task 6-7）✅；范围外条目在 Global Constraints 体现 ✅
- 占位符：SKILL.md 全文给出，无 TBD ✅
- 一致性：字段名 collected/source_url/freshness/valid_until/tax_year 全程一致；报告路径 `raw_material/_audit/` 一致；skill 位置修正为项目 `.claude/skills/`（spec 笔误已在 Global Constraints 标注）✅
