# 知识库质量审计与时效性管理设计文档

**日期**：2026-07-21
**状态**：已确认，待实施

---

## 目标

解决知识库两个长期问题：

1. **质量**：raw_material 内容是否准确、完整、有可靠来源、结构规范
2. **时效**：知识会失效（税阶、限额、政策每年变），需要系统化发现失效并更新

方案：元数据 schema 扩展 + 两个可复用 skill（`/wealth-audit`、`/wealth-freshness`）+ 首轮全库治理。

---

## 一、元数据 Schema

### raw_material frontmatter（新增，全部文件统一）

```yaml
---
title: 联邦所得税税阶
collected: 2026-04-16          # 收集日期
source_url:                     # 官方来源列表
  - https://www.irs.gov/...
freshness: annual               # evergreen | annual | volatile
valid_until: 2026-12-31         # annual/volatile 必填；evergreen 留空
tax_year: 2026                  # 可选，税务类文件专用
---
```

### freshness 三级定义

| 级别 | 含义 | 例子 | valid_until 规则 |
|------|------|------|------|
| `evergreen` | 概念性知识，基本不变 | 4% 规则、Bucket Strategy、边际税率概念 | 留空，不参与过期扫描 |
| `annual` | 每年固定更新 | 税阶、标准扣除、IRA/401K limit、FPL | 当年 12-31 |
| `volatile` | 随政策/市场随时可能变 | OBBBA 新规、购汇额度、Medicare 保费 | 收集日 + 6 个月 |

### wiki frontmatter（现有基础上加一个字段）

```yaml
freshness: annual    # 继承自 source 的 raw_material，取最不稳定的一档
```

wiki 已有 `updated` + `source` 字段，扫描时通过 `source` 关联 raw_material 判断上游是否过期。

---

## 二、`/wealth-audit` skill（质量审计）

**用法**：`/wealth-audit <raw_material文件>`（单文件）或 `/wealth-audit --all`（批量）

**四维检查**（优先级 A > C > B > D）：

```
1. 结构规范（D，纯本地）
   - frontmatter 完整性：collected / source_url / freshness / valid_until
   - 缺失 → 列出，可自动补（freshness 由 AI 判断建议值）

2. 来源可靠（B，纯本地）
   - source_url 是否存在；是否含官方域名（irs.gov / ssa.gov / medicare.gov / ftb.ca.gov 等）
   - 全是二手来源 → 标记 ⚠️ 建议补官方来源

3. 事实准确（A，联网，重点）
   - 提取关键事实：数字（税阶、限额、百分比）、规则（资格条件、期限）
   - 逐个联网对照官方来源验证
   - 输出：✅ 确认 / ❌ 有误（附正确值+出处）/ ❓ 无法验证

4. 覆盖完整（C，AI 评估）
   - AI 生成该主题的"核心知识点 checklist"（懂行顾问期待这篇文章讲什么）
   - 对照文件列出缺失知识点，按重要性排序
```

**输出**：报告写入 `raw_material/_audit/<文件名>-audit-YYYY-MM-DD.md`，含四维评分（A-F）+ 修复清单。用户确认后 skill 可直接修复文件。

**批量模式**：逐文件跑，汇总全库质量表（文件 × 四维评分），排出最需修复 top 10。

---

## 三、`/wealth-freshness` skill（时效扫描）

**用法**：`/wealth-freshness`（扫描报告）/ `/wealth-freshness --update`（扫描 + 联网更新）

**扫描流程**（纯本地）：

```
1. 扫 raw_material 全部 frontmatter
   → 🔴 已过期（valid_until < 今天）
   → 🟡 30 天内到期
   → ⚪ 无标注（提示补标）
   → 🟢 有效

2. 跨层关联
   → 对每个 🔴/🟡 文件，反查 wiki 中 source 指向它的条目
   → 输出受影响 wiki 条目清单

3. 报告写入 raw_material/_audit/freshness-YYYY-MM-DD.md
```

**更新流程**（`--update`，逐文件人工确认）：

```
对每个 🔴 文件：
1. 按 source_url 联网抓最新官方数据
2. 对比新旧，列出变化点（如 "2027 标准扣除 MFJ: $32,200 → $33,100"）
3. 用户确认 → 更新内容 + collected/valid_until 顺延
4. 提示运行 /wealth-sync <受影响wiki条目> 传播到下游
```

**节奏**：每年 1 月 IRS 发新数字后跑 `--update`；平时随手扫描。不做 cron 自动化——更新需人工确认。

---

## 四、落地顺序

```
Phase 1: 基础设施
  1. schema 定义写入 CLAUDE.md 的 raw_material 规范节
  2. 批量补标注 ~90 个存量 raw_material（AI 判断 freshness，逐目录批量，用户抽查）
  3. wiki ~120 条目补 freshness 字段（从 source 继承推导）

Phase 2: 两个 skill
  4. /wealth-audit（~/.claude/skills/wealth-audit/SKILL.md）
  5. /wealth-freshness（~/.claude/skills/wealth-freshness/SKILL.md）

Phase 3: 首轮运行
  6. /wealth-freshness 扫描 → 处理已过期文件
  7. /wealth-audit --all 全库审计 → top 10 问题清单 → 按优先级修复
```

---

## 范围外

- `output/` 个人数据层不参与（跟随交易更新，非知识）
- `publish/` 文章不参与（虚构案例，发布时点固定）
- wiki 内容更新继续走现有 `/wealth-sync`，本设计只负责"发现该更新"
