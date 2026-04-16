# Wealth Wiki 知识库重构实施计划

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 将 wealth/ 目录重构为三层知识库（raw_material / wiki / output），支持 Obsidian 深度集成，并提供三个 Claude Skills 实现知识提炼与策略生成。

**Architecture:** raw_material 存放原始调研文章，wiki 为经过提炼的 Obsidian 知识库（含 Dataview/WikiLinks/MOC），output 存放含个人数据的分析文件（.gitignore 隔离）。三个 skill（wealth-extract / wealth-sync / wealth-advise）串联整个流程。

**Tech Stack:** Markdown, YAML frontmatter, Obsidian Dataview, WikiLinks, Claude Skills (SKILL.md)

---

## Task 1：创建目录结构 + .gitignore

**Files:**
- Create: `wealth/raw_material/` (目录)
- Create: `wealth/wiki/账户类型/`
- Create: `wealth/wiki/税务策略/`
- Create: `wealth/wiki/投资品种/`
- Create: `wealth/wiki/退休规划/`
- Create: `wealth/wiki/中美对比/`
- Create: `wealth/output/`
- Create: `wealth/.gitignore`

- [ ] **Step 1：创建所有子目录**

```bash
mkdir -p wealth/raw_material
mkdir -p wealth/wiki/账户类型
mkdir -p wealth/wiki/税务策略
mkdir -p wealth/wiki/投资品种
mkdir -p wealth/wiki/退休规划
mkdir -p wealth/wiki/中美对比
mkdir -p wealth/output
```

- [ ] **Step 2：创建 .gitignore**

创建 `wealth/.gitignore`，内容：

```
output/
```

- [ ] **Step 3：验证目录结构**

```bash
find wealth/ -type d | sort
```

期望输出包含：
```
wealth/output
wealth/raw_material
wealth/wiki
wealth/wiki/中美对比
wealth/wiki/健康类型
wealth/wiki/投资品种
wealth/wiki/税务策略
wealth/wiki/退休规划
```

- [ ] **Step 4：Commit**

```bash
git add wealth/.gitignore
git commit -m "chore: scaffold wealth wiki directory structure with gitignore"
```

---

## Task 2：迁移文件到 raw_material/ 和 output/

**Files:**
- Move to `wealth/raw_material/`: 7 个通用知识文件
- Move to `wealth/output/`: 13 个含个人数据文件

- [ ] **Step 1：迁移 raw_material 文件**

```bash
cd wealth
mv "中美财富管理体系对比分析.md" raw_material/
mv "国内外理财对比调研.md" raw_material/
mv "年金知识与是否需要的分析.md" raw_material/
mv "投资策略建议.md" raw_material/
mv "理财思维导图.md" raw_material/
mv "豆包对投资策略建议的校对.md" raw_material/
mv "豆包的校对.md" raw_material/
```

- [ ] **Step 2：迁移 output 文件**

```bash
cd wealth
mv "我的现金和投资.md" output/
mv "我的退休基金.md" output/
mv "投资持仓快照.md" output/
mv "投资执行日志.md" output/
mv "投资优化分析.md" output/
mv "投资优化计划.md" output/
mv "runway-calculation.md" output/
mv "三段式退休规划（55大公司→59.5自由职业→退休）.md" output/三段式退休规划.md
mv "我的个人投资策略.md" output/
mv "我的退休基金投资策略建议.md" output/
mv "IUL分析报告.md" output/
mv "chen.md" output/
mv "换工作401K_Rollover策略.md" output/
mv "我的情况,md" output/我的情况.md
```

- [ ] **Step 3：迁移其他文件**

```bash
cd wealth
mv "IUL 比较.xlsx" output/
mv "投资优化分析.md" output/ 2>/dev/null || true
```

- [ ] **Step 4：验证迁移结果**

```bash
ls wealth/raw_material/
ls wealth/output/
ls wealth/*.md 2>/dev/null || echo "根目录无散落 md 文件 ✓"
```

- [ ] **Step 5：Commit（只提交 raw_material，output 被 gitignore）**

```bash
git add wealth/raw_material/
git status  # 确认 output/ 不出现在 staged 列表
git commit -m "feat: migrate files to raw_material and output directories"
```

---

## Task 3：初始化 Wiki MOC 页

**Files:**
- Create: `wealth/wiki/00-MOC-总览.md`
- Create: `wealth/wiki/账户类型/00-MOC-账户类型.md`
- Create: `wealth/wiki/税务策略/00-MOC-税务策略.md`
- Create: `wealth/wiki/投资品种/00-MOC-投资品种.md`
- Create: `wealth/wiki/退休规划/00-MOC-退休规划.md`
- Create: `wealth/wiki/中美对比/00-MOC-中美对比.md`

- [ ] **Step 1：创建顶层 MOC**

创建 `wealth/wiki/00-MOC-总览.md`：

````markdown
---
title: 财富规划知识库总览
category: MOC
tags: [总览, MOC]
updated: 2026-04-16
status: stable
---

# 财富规划知识库

> 本知识库基于 Karpathy LLM Wiki 理念构建，分三层：raw_material（原始资料）→ wiki（提炼知识）→ output（个人策略）

## 知识分区

- [[账户类型/00-MOC-账户类型|账户类型]] — Roth IRA、401K、Betterment、SGOV 等
- [[税务策略/00-MOC-税务策略|税务策略]] — 税损收割、Wash Sale Rule 等
- [[投资品种/00-MOC-投资品种|投资品种]] — ETF、杠杆ETF、IUL 等
- [[退休规划/00-MOC-退休规划|退休规划]] — 三段式框架、年金 等
- [[中美对比/00-MOC-中美对比|中美对比]] — 双边资产策略 等

## 全库 Dataview 索引

```dataview
TABLE category, updated, status
FROM "wiki"
WHERE file.name != "00-MOC-总览"
SORT category ASC, updated DESC
```
````

- [ ] **Step 2：创建账户类型 MOC**

创建 `wealth/wiki/账户类型/00-MOC-账户类型.md`：

````markdown
---
title: 账户类型总览
category: MOC
tags: [账户类型, MOC]
updated: 2026-04-16
status: stable
---

# 账户类型

## 条目列表

- [[Roth-IRA]] — 税后供款，增值和提取完全免税
- [[401K]] — 税前供款，雇主匹配，退休后缴税
- [[Betterment]] — 机器人投顾，自动再平衡
- [[SGOV]] — 短期国债ETF，州税豁免

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/账户类型"
WHERE file.name != "00-MOC-账户类型"
WHERE status != "outdated"
SORT updated DESC
```
````

- [ ] **Step 3：创建税务策略 MOC**

创建 `wealth/wiki/税务策略/00-MOC-税务策略.md`：

````markdown
---
title: 税务策略总览
category: MOC
tags: [税务策略, MOC]
updated: 2026-04-16
status: stable
---

# 税务策略

## 条目列表

- [[税损收割]] — 卖出亏损资产锁定税务损失，抵消资本利得
- [[Wash-Sale-Rule]] — 30天内不得买回同种资产，否则损失不可抵税

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/税务策略"
WHERE file.name != "00-MOC-税务策略"
SORT updated DESC
```
````

- [ ] **Step 4：创建投资品种 MOC**

创建 `wealth/wiki/投资品种/00-MOC-投资品种.md`：

````markdown
---
title: 投资品种总览
category: MOC
tags: [投资品种, MOC]
updated: 2026-04-16
status: stable
---

# 投资品种

## 条目列表

- [[ETF总览]] — 指数基金，低费率，分散风险
- [[杠杆ETF]] — 2-3倍杠杆，适合短持，长持有衰减风险
- [[IUL]] — 指数型万能寿险，保险+投资混合产品

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/投资品种"
WHERE file.name != "00-MOC-投资品种"
SORT updated DESC
```
````

- [ ] **Step 5：创建退休规划 MOC**

创建 `wealth/wiki/退休规划/00-MOC-退休规划.md`：

````markdown
---
title: 退休规划总览
category: MOC
tags: [退休规划, MOC]
updated: 2026-04-16
status: stable
---

# 退休规划

## 条目列表

- [[三段式退休框架]] — 大公司(55) → 自由职业(59.5) → 退休
- [[年金]] — 保险公司产品，提供终身收入流，需权衡流动性

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/退休规划"
WHERE file.name != "00-MOC-退休规划"
SORT updated DESC
```
````

- [ ] **Step 6：创建中美对比 MOC**

创建 `wealth/wiki/中美对比/00-MOC-中美对比.md`：

````markdown
---
title: 中美财富管理对比总览
category: MOC
tags: [中美对比, MOC]
updated: 2026-04-16
status: stable
---

# 中美对比

## 条目列表

- [[双边资产策略]] — 同时持有中美资产的配置框架与税务考量

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/中美对比"
WHERE file.name != "00-MOC-中美对比"
SORT updated DESC
```
````

- [ ] **Step 7：Commit**

```bash
git add wealth/wiki/
git commit -m "feat: initialize wiki MOC pages for all 5 categories"
```

---

## Task 4：初始化核心 Wiki 条目

**Files:**
- Create: `wealth/wiki/账户类型/Roth-IRA.md`
- Create: `wealth/wiki/账户类型/401K.md`
- Create: `wealth/wiki/账户类型/SGOV.md`
- Create: `wealth/wiki/账户类型/Betterment.md`
- Create: `wealth/wiki/税务策略/税损收割.md`
- Create: `wealth/wiki/税务策略/Wash-Sale-Rule.md`
- Create: `wealth/wiki/投资品种/ETF总览.md`
- Create: `wealth/wiki/投资品种/杠杆ETF.md`
- Create: `wealth/wiki/投资品种/IUL.md`
- Create: `wealth/wiki/退休规划/三段式退休框架.md`
- Create: `wealth/wiki/退休规划/年金.md`
- Create: `wealth/wiki/中美对比/双边资产策略.md`

- [ ] **Step 1：创建 Roth-IRA 条目**

创建 `wealth/wiki/账户类型/Roth-IRA.md`：

```markdown
---
title: Roth IRA
category: 账户类型
tags: [退休账户, 免税增值, 美国, Roth]
source: "[[raw_material/年金知识与是否需要的分析]]"
updated: 2026-04-16
status: stable
---

## 定义
Roth IRA 是美国的个人退休账户，使用税后资金供款，账户内增值和符合条件的提取完全免税。

## 核心要点
- 2026年供款上限：$7,000/年（50岁以上 $8,000）
- 收入限制：单身 MAGI < $161k 可全额供款
- 59.5岁后提取增值免税，无强制最低提取（RMD）
- 本金随时可取出（无罚款），增值须满足条件才能免税提取
- 适合预期未来税率更高时使用

## 与其他概念的关系
- [[401K]]：税前供款，与 Roth IRA 互补；可 Rollover 至 Roth IRA（需缴税）
- [[税损收割]]：Roth IRA 内操作不涉及资本利得税，税损收割在应税账户更有价值
- [[Wash-Sale-Rule]]：跨账户（应税→Roth IRA）同种资产买卖仍触发 wash sale

## 参考来源
- [[raw_material/年金知识与是否需要的分析]]
- [[raw_material/国内外理财对比调研]]
```

- [ ] **Step 2：创建 401K 条目**

创建 `wealth/wiki/账户类型/401K.md`：

```markdown
---
title: 401K
category: 账户类型
tags: [退休账户, 税前供款, 雇主匹配, 美国]
source: "[[raw_material/国内外理财对比调研]]"
updated: 2026-04-16
status: stable
---

## 定义
401K 是美国雇主提供的退休储蓄计划，使用税前资金供款，降低当年应税收入，退休后提取时缴税。

## 核心要点
- 2026年供款上限：$23,500/年（50岁以上额外 $7,500 catch-up）
- 雇主匹配：通常匹配供款的50%-100%，是免费的收益，应优先供满
- 59.5岁前提取：缴税 + 10% 罚款
- 离职后可 Rollover 至 IRA（传统或 Roth）
- 有强制最低提取要求（RMD），73岁起必须提取

## 与其他概念的关系
- [[Roth-IRA]]：退休账户组合，401K 税前 + Roth IRA 税后，对冲未来税率风险
- [[税损收割]]：401K 内为税延账户，无需考虑税损收割

## 参考来源
- [[raw_material/国内外理财对比调研]]
```

- [ ] **Step 3：创建 SGOV 条目**

创建 `wealth/wiki/账户类型/SGOV.md`：

```markdown
---
title: SGOV
category: 账户类型
tags: [ETF, 现金等价物, 州税豁免, 短期国债]
source: "[[raw_material/投资策略建议]]"
updated: 2026-04-16
status: stable
---

## 定义
SGOV 是 iShares 的0-3个月美国国债 ETF，是现金等价物，利息收入享受州税豁免（联邦税正常缴）。

## 核心要点
- 年化收益约 5.0-5.3%（随联邦基准利率浮动）
- 利息免加州等州税（T-bill 利息州税豁免）
- 税后实际收益约3.9-4.0%（按24%联邦税）
- 优于 HYSA（4%税前，缴加州税后仅约2.5%）
- 流动性高，T+1结算，适合停放短期闲置资金

## 与其他概念的关系
- [[ETF总览]]：SGOV 属于债券/货币市场 ETF 类别
- [[税损收割]]：SGOV 波动极小，几乎无税损收割机会

## 参考来源
- [[raw_material/投资策略建议]]
```

- [ ] **Step 4：创建 Betterment 条目**

创建 `wealth/wiki/账户类型/Betterment.md`：

```markdown
---
title: Betterment
category: 账户类型
tags: [机器人投顾, 自动再平衡, 税损收割]
source: "[[raw_material/国内外理财对比调研]]"
updated: 2026-04-16
status: stable
---

## 定义
Betterment 是美国领先的机器人投顾（robo-advisor），自动构建和再平衡分散化投资组合，并提供自动税损收割功能。

## 核心要点
- 管理费：0.25%/年（余额>$2万）
- 自动再平衡：偏离目标配置时自动调整
- 税损收割：自动扫描并执行，对应税账户有价值
- 股债比例可自定义（如70%股/30%债）
- 适合懒人投资，不适合追求主动选股

## 与其他概念的关系
- [[ETF总览]]：Betterment 底层持仓为低费率 ETF（VTI、VXUS 等）
- [[税损收割]]：Betterment 自动税损收割是其核心优势之一

## 参考来源
- [[raw_material/国内外理财对比调研]]
```

- [ ] **Step 5：创建税损收割条目**

创建 `wealth/wiki/税务策略/税损收割.md`：

```markdown
---
title: 税损收割
category: 税务策略
tags: [税务优化, 资本利得, 节税]
source: "[[raw_material/投资策略建议]]"
updated: 2026-04-16
status: stable
---

## 定义
税损收割（Tax Loss Harvesting）是指卖出账面亏损的资产，锁定资本损失，用于抵消当年的资本利得或普通收入（最多$3,000/年），从而降低税单。

## 核心要点
- 短期损失优先抵消短期利得（税率较高），长期损失抵消长期利得
- 每年最多用$3,000资本损失抵消普通收入，超出部分可结转至来年
- 卖出后需遵守 Wash Sale Rule（30天内不买回同种资产）
- 仅适用于应税账户（Taxable Account），退休账户（IRA/401K）内无资本利得税，无需操作
- 节税价值 = 亏损金额 × 适用税率

## 与其他概念的关系
- [[Wash-Sale-Rule]]：税损收割的配套规则，违反则损失不被认可
- [[Roth-IRA]]：Roth IRA 内操作免税，税损收割只在应税账户有意义

## 参考来源
- [[raw_material/投资策略建议]]
- [[raw_material/豆包对投资策略建议的校对]]
```

- [ ] **Step 6：创建 Wash Sale Rule 条目**

创建 `wealth/wiki/税务策略/Wash-Sale-Rule.md`：

```markdown
---
title: Wash Sale Rule
category: 税务策略
tags: [税务规则, IRS, 资本损失]
source: "[[raw_material/投资策略建议]]"
updated: 2026-04-16
status: stable
---

## 定义
Wash Sale Rule（洗售规则）是 IRS 规定：若在卖出证券前后各30天内（共61天窗口）买入"实质相同"的证券，则该亏损不得用于抵税。

## 核心要点
- 窗口：卖出日前30天 + 卖出日 + 卖出日后30天 = 61天
- "实质相同"包括：完全相同的股票/ETF，以及追踪同一指数的不同ETF（有争议）
- 跨账户有效：应税账户卖出，在 IRA/Roth IRA 内买回，仍触发 wash sale
- 触发后：亏损不消失，而是加到新买入资产的成本基础上（递延）
- 绕过方式：买入不同但相关的 ETF（如卖 SPY 买 VOO，合规但有争议；卖 SPY 买 VTI 更安全）

## 与其他概念的关系
- [[税损收割]]：税损收割操作的核心合规要求
- [[Roth-IRA]]：跨账户买卖同种资产仍触发，需特别注意

## 参考来源
- [[raw_material/投资策略建议]]
```

- [ ] **Step 7：创建 ETF总览 条目**

创建 `wealth/wiki/投资品种/ETF总览.md`：

```markdown
---
title: ETF 总览
category: 投资品种
tags: [ETF, 指数基金, 分散投资]
source: "[[raw_material/中美财富管理体系对比分析]]"
updated: 2026-04-16
status: stable
---

## 定义
ETF（Exchange-Traded Fund，交易所交易基金）是追踪指数、行业或资产类别的基金，像股票一样在交易所买卖，费率极低。

## 核心要点
- 宽基 ETF：VTI（全美市场）、VOO/SPY（标普500）、QQQ（纳斯达克100）
- 国际 ETF：VXUS（美国以外）、MCHI（中国）、KWEB（中国互联网）
- 债券 ETF：BND（美国债券）、SGOV（短期国债）
- 费率极低（VTI 0.03%），适合长期持有
- 宽基 ETF 是"核心仓"首选，个股为"卫星仓"

## 与其他概念的关系
- [[杠杆ETF]]：ETF 的变种，带杠杆，风险显著更高
- [[SGOV]]：特殊类型 ETF，现金等价物
- [[Betterment]]：底层持仓为 ETF

## 参考来源
- [[raw_material/中美财富管理体系对比分析]]
- [[raw_material/投资策略建议]]
```

- [ ] **Step 8：创建杠杆ETF条目**

创建 `wealth/wiki/投资品种/杠杆ETF.md`：

```markdown
---
title: 杠杆 ETF
category: 投资品种
tags: [杠杆ETF, TQQQ, 高风险, 衰减]
source: "[[raw_material/投资策略建议]]"
updated: 2026-04-16
status: stable
---

## 定义
杠杆 ETF 每日追踪标的指数的2倍或3倍涨跌。由于每日重置机制，长期持有存在"波动率衰减"（Volatility Decay），熊市和震荡市中损失远超预期。

## 核心要点
- 代表标的：TQQQ（3倍QQQ）、SOXL（3倍半导体）
- 适合短期趋势交易，不适合长期持有（除非牛市明确）
- 波动率衰减：指数震荡±10%时，3倍ETF净值持续下滑
- 强烈建议在 Roth IRA 内持有：若增值免税，若亏损无法税损收割（两者均适用）
- 仓位控制：总资产占比建议<5%

## 与其他概念的关系
- [[ETF总览]]：杠杆ETF 是 ETF 的高风险变种
- [[税损收割]]：Roth IRA 内持有则无法税损收割，应税账户内可操作
- [[Roth-IRA]]：杠杆ETF 的最优持有账户

## 参考来源
- [[raw_material/投资策略建议]]
```

- [ ] **Step 9：创建 IUL 条目**

创建 `wealth/wiki/投资品种/IUL.md`：

```markdown
---
title: IUL（指数型万能寿险）
category: 投资品种
tags: [保险, IUL, 指数型万能寿险, 税务]
source: "[[raw_material/年金知识与是否需要的分析]]"
updated: 2026-04-16
status: stable
---

## 定义
IUL（Indexed Universal Life）是一种永久寿险，现金价值与股票指数挂钩（通常为标普500），设有利率上限（Cap）和下限（Floor，通常0%），提供一定保本保障。

## 核心要点
- 现金价值增长：挂钩指数，有Cap（如11%）和Floor（0%）
- 保费灵活，现金价值积累免税，提取可用保单贷款方式避税
- 费用高：佣金、保险费用、管理费等侵蚀收益
- 适合：已最大化 401K/IRA 后还有余钱、高收入需要额外税务保护者
- 不适合：纯投资需求（ETF费率远低于IUL）、流动性需求高者

## 与其他概念的关系
- [[年金]]：同为保险公司产品，IUL 有身故赔付，年金偏重收入流
- [[Roth-IRA]]：先最大化 Roth IRA，再考虑 IUL

## 参考来源
- [[raw_material/年金知识与是否需要的分析]]
```

- [ ] **Step 10：创建三段式退休框架条目**

创建 `wealth/wiki/退休规划/三段式退休框架.md`：

```markdown
---
title: 三段式退休框架
category: 退休规划
tags: [退休规划, 职业规划, 财务独立]
source: "[[raw_material/国内外理财对比调研]]"
updated: 2026-04-16
status: stable
---

## 定义
三段式退休框架是一种渐进式退休路径：大公司积累资本→自由职业过渡→完全退休，兼顾财务安全与生活质量。

## 核心要点
- **阶段一（大公司）**：最大化 401K/RSU/ESPP，积累被动收入来源
- **阶段二（自由职业，59.5岁前后）**：退休账户可无罚款提取，降低工作强度，收入覆盖生活支出
- **阶段三（完全退休）**：依靠投资组合收益 + 社保（67岁）生活
- 关键指标：4% 提取规则（资产×4%能覆盖年支出即达到财务独立）
- 中美双边资产需纳入规划（中国社保/资产的提取时机）

## 与其他概念的关系
- [[401K]]：阶段一核心积累工具
- [[Roth-IRA]]：阶段二税务灵活性的重要来源
- [[年金]]：阶段三可考虑作为"保底收入"补充

## 参考来源
- [[raw_material/国内外理财对比调研]]
```

- [ ] **Step 11：创建年金条目**

创建 `wealth/wiki/退休规划/年金.md`：

```markdown
---
title: 年金（Annuity）
category: 退休规划
tags: [年金, 保险, 退休收入, 流动性]
source: "[[raw_material/年金知识与是否需要的分析]]"
updated: 2026-04-16
status: stable
---

## 定义
年金是保险公司提供的合同产品，一次性或分期缴纳保费，换取未来（通常退休后）持续的定期收入，提供"不会花完的钱"的保障。

## 核心要点
- 主要类型：即期年金（立即领取）、递延年金（未来领取）、固定/变额/指数型
- 核心优势：终身收入保障，消除长寿风险
- 核心劣势：流动性极差、费用高、通胀侵蚀固定收益
- 适合：已有足够流动资产、寻求保底收入者
- 不适合：需要流动性、资产不足以覆盖退休支出基础的人
- 买年金前需回答：没有年金，最坏情况能活多久？

## 与其他概念的关系
- [[三段式退休框架]]：年金可作为阶段三基础收入补充
- [[IUL]]：同为保险产品，IUL 偏重资产增值，年金偏重收入流

## 参考来源
- [[raw_material/年金知识与是否需要的分析]]
```

- [ ] **Step 12：创建双边资产策略条目**

创建 `wealth/wiki/中美对比/双边资产策略.md`：

```markdown
---
title: 双边资产策略
category: 中美对比
tags: [中美资产, 双边, 外汇, 资产配置]
source: "[[raw_material/中美财富管理体系对比分析]]"
updated: 2026-04-16
status: stable
---

## 定义
双边资产策略是指同时在中国和美国持有资产的家庭，需在汇率、税务、法律和流动性多个维度进行协调规划的投资框架。

## 核心要点
- **美国资产**：401K/Roth IRA/应税账户，受 SEC/IRS 监管，信息透明
- **中国资产**：A股/理财产品/房产/社保，监管规则不同，汇率风险显著
- **外汇风险**：人民币/美元汇率波动影响实际财富，建议分散配置两种货币
- **税务申报**：美国居民须申报全球收入（含中国），FBAR 申报门槛$10k
- **资金转移**：每人每年$5万美元额度（中国管制），提前规划时间窗口

## 与其他概念的关系
- [[401K]]：美国侧退休资产核心
- [[三段式退休框架]]：需将中国社保/资产提取时机纳入整体规划

## 参考来源
- [[raw_material/中美财富管理体系对比分析]]
- [[raw_material/国内外理财对比调研]]
```

- [ ] **Step 13：验证所有 wiki 条目存在**

```bash
find wealth/wiki -name "*.md" | sort
```

期望输出12个条目文件 + 6个 MOC 文件 = 18个文件。

- [ ] **Step 14：Commit**

```bash
git add wealth/wiki/
git commit -m "feat: initialize 12 core wiki entries with Obsidian frontmatter"
```

---

## Task 5：编写 wealth-extract skill

**Files:**
- Create: `~/.claude/skills/wealth-extract/SKILL.md`

- [ ] **Step 1：创建 skill 目录**

```bash
mkdir -p ~/.claude/skills/wealth-extract
```

- [ ] **Step 2：创建 SKILL.md**

创建 `~/.claude/skills/wealth-extract/SKILL.md`：

````markdown
---
name: wealth-extract
description: 从 raw_material 文章中提炼新的 wiki 条目。将原始调研内容转化为结构化 Obsidian 知识条目，自动补全 WikiLinks 和 frontmatter。用法：/wealth-extract <raw_material文件路径>
---

# wealth-extract

将 `raw_material/` 中的文章提炼为 `wiki/` 下的结构化知识条目。

## 使用方式

```
/wealth-extract raw_material/国内外理财对比调研.md
```

## 执行步骤

1. **读取原文**：使用 Read 工具读取指定的 raw_material 文件全文

2. **识别概念**：扫描文章，提取所有独立知识概念，每个概念对应一个 wiki 条目：
   - 账户类型（如：HSA、529、Brokerage Account）
   - 税务规则（如：NIIT、AMT、资本利得税率）
   - 投资品种（如：REITs、债券梯子）
   - 退休规划概念
   - 中美对比知识点

3. **检查已有条目**：对每个概念，用 Glob 检查 `wiki/` 下是否已存在同名或同义文件
   - 已存在 → 跳过，提示用户用 `/wealth-sync` 更新
   - 不存在 → 进入下一步新建

4. **确定分类**：根据概念类型，确定放入哪个子目录：
   - `wiki/账户类型/`
   - `wiki/税务策略/`
   - `wiki/投资品种/`
   - `wiki/退休规划/`
   - `wiki/中美对比/`

5. **生成条目**：为每个新概念创建 wiki 文件，严格使用以下 frontmatter schema：

```yaml
---
title: <概念名称>
category: <账户类型 | 税务策略 | 投资品种 | 退休规划 | 中美对比>
tags: [tag1, tag2, tag3]
source: "[[raw_material/<来源文件名>]]"
updated: <今日日期 YYYY-MM-DD>
status: draft
---
```

正文结构：

```markdown
## 定义
一句话说清楚这是什么

## 核心要点
- 要点1（来自原文的具体信息）
- 要点2
- 要点3

## 与其他概念的关系
- [[已有wiki条目]]：关系说明

## 参考来源
- [[raw_material/<来源文件>]]
```

6. **补全 WikiLinks**：在"与其他概念的关系"中，检查 `wiki/` 目录下已有哪些条目，将相关联的已有条目用 `[[条目名]]` 格式链接

7. **更新 MOC**：在对应分类的 `00-MOC-<分类>.md` 文件中，追加新条目的链接行：
   ```
   - [[新条目名]] — 一句话简介
   ```

8. **汇报结果**：告知用户：
   - 新建了哪些条目（文件路径）
   - 跳过了哪些（已存在）
   - 建议用 `/wealth-sync` 更新的条目列表

## 注意事项

- 条目初始 status 设为 `draft`，经人工确认后改为 `stable`
- 不要修改 raw_material 原文
- 一个概念一个文件，保持原子性
- 文件名使用英文或拼音（Obsidian 跨平台兼容性更好）
````

- [ ] **Step 3：验证 skill 文件存在**

```bash
cat ~/.claude/skills/wealth-extract/SKILL.md | head -5
```

期望输出：`---` 开头的 frontmatter。

- [ ] **Step 4：测试 skill 可被发现**

在 Claude Code 中输入 `/wealth-extract` 确认 skill 被识别（无需真正执行）。

---

## Task 6：编写 wealth-sync skill

**Files:**
- Create: `~/.claude/skills/wealth-sync/SKILL.md`

- [ ] **Step 1：创建 skill 目录**

```bash
mkdir -p ~/.claude/skills/wealth-sync
```

- [ ] **Step 2：创建 SKILL.md**

创建 `~/.claude/skills/wealth-sync/SKILL.md`：

````markdown
---
name: wealth-sync
description: 用 raw_material 中的新内容更新已有 wiki 条目。当原始资料有更新或补充时，提取增量知识点合并到对应 wiki 条目，不覆盖已有内容。用法：/wealth-sync <wiki条目路径>
---

# wealth-sync

将 `raw_material/` 中的新增内容同步更新到已有 `wiki/` 条目。

## 使用方式

```
/wealth-sync wiki/账户类型/Roth-IRA.md
```

## 执行步骤

1. **读取 wiki 条目**：使用 Read 工具读取指定的 wiki 文件，解析 frontmatter 中的 `source` 字段，获取来源 raw_material 文件路径

2. **读取来源文件**：读取 `source` 指向的 raw_material 文件全文

3. **对比分析**：将 raw_material 中关于该条目主题的内容与 wiki 条目现有内容对比：
   - 找出 raw_material 中有但 wiki 条目中未提及的知识点
   - 找出 raw_material 中有数据更新的内容（如利率变化、法规修订）

4. **展示差异**：向用户展示拟新增/更新的内容摘要，格式：
   ```
   📝 拟新增到"核心要点"：
   - 新要点1
   - 新要点2

   🔄 拟更新的内容：
   - 原：xxx → 新：yyy
   ```

5. **等待确认**：询问用户是否继续（默认继续）

6. **执行更新**：
   - 将新要点追加到"核心要点"末尾，不删除已有内容
   - 更新有变化的数据
   - 更新 frontmatter：`updated` 改为今日日期，`status` 改为 `stable`

7. **汇报完成**：告知用户更新了哪些内容，frontmatter 变更情况

## 注意事项

- **只追加，不删除**：已有内容不会被覆盖，只会追加新信息
- 如果 raw_material 中无新内容，告知用户"条目已是最新，无需更新"
- 更新后 status 自动变为 `stable`
````

- [ ] **Step 3：验证文件**

```bash
cat ~/.claude/skills/wealth-sync/SKILL.md | head -5
```

---

## Task 7：编写 wealth-advise skill

**Files:**
- Create: `~/.claude/skills/wealth-advise/SKILL.md`

- [ ] **Step 1：创建 skill 目录**

```bash
mkdir -p ~/.claude/skills/wealth-advise
```

- [ ] **Step 2：创建 SKILL.md**

创建 `~/.claude/skills/wealth-advise/SKILL.md`：

````markdown
---
name: wealth-advise
description: 结合 wiki 知识库和 output 个人数据，针对指定主题生成具体的财富规划策略建议。用法：/wealth-advise <主题>，例如：/wealth-advise 税务优化、/wealth-advise Roth-IRA配置、/wealth-advise 退休规划
---

# wealth-advise

结合通用知识（wiki）和个人数据（output），为指定主题生成针对性策略建议。

## 使用方式

```
/wealth-advise 税务优化
/wealth-advise Roth-IRA配置
/wealth-advise 退休规划
```

## 主题到文件的映射

根据用户指定主题，自动读取相关文件：

| 主题关键词 | 相关 wiki 条目 | 相关 output 文件 |
|-----------|--------------|----------------|
| 税务优化 / 税损收割 | wiki/税务策略/* | output/投资持仓快照.md, output/投资执行日志.md |
| Roth IRA / 退休账户 | wiki/账户类型/Roth-IRA.md, wiki/账户类型/401K.md | output/我的退休基金.md, output/我的退休基金投资策略建议.md |
| 退休规划 | wiki/退休规划/* | output/三段式退休规划.md, output/runway-calculation.md |
| 投资配置 / 持仓 | wiki/投资品种/*, wiki/账户类型/* | output/投资持仓快照.md, output/我的个人投资策略.md |
| 现金管理 / SGOV | wiki/账户类型/SGOV.md | output/我的现金和投资.md |
| IUL / 保险 | wiki/投资品种/IUL.md | output/IUL分析报告.md |
| 中美 / 双边 | wiki/中美对比/* | output/我的现金和投资.md |

## 执行步骤

1. **解析主题**：根据用户输入的主题关键词，对照上表确定需要读取的文件列表

2. **读取知识层**：使用 Read 工具读取相关 wiki 条目，提取适用的原则、规则、要点

3. **读取个人数据层**：使用 Read 工具读取相关 output 文件，提取用户的：
   - 当前持仓和金额
   - 已执行操作历史
   - 账户余额和分布

4. **生成分析**：综合知识层和个人数据层，生成以下结构的建议：

```markdown
## 当前状况分析
基于你的实际数据，当前 <主题> 方面的状况是：...

## 发现的优化机会
1. <具体问题>：<基于wiki知识的解释>
2. ...

## 具体行动建议
| 优先级 | 操作 | 预期价值 | 注意事项 |
|-------|------|---------|---------|
| 🔴 高 | ... | ... | ... |

## 风险提示
- ...
```

5. **询问是否保存**：询问用户是否将建议保存到 `output/` 目录
   - 是 → 写入 `output/<主题>策略建议-<日期>.md`
   - 否 → 仅展示，不写入文件

## 注意事项

- output/ 目录含个人敏感数据，不入 git，建议妥善保管
- 建议基于当时持仓快照，随市场变化可能过时，定期用 `/wealth-advise` 重新生成
- 本工具输出为参考建议，不构成投资建议，请结合自身判断
````

- [ ] **Step 3：验证三个 skill 均存在**

```bash
ls ~/.claude/skills/wealth-extract/
ls ~/.claude/skills/wealth-sync/
ls ~/.claude/skills/wealth-advise/
```

每个目录下应有 `SKILL.md`。

---

## Task 8：最终验证与 Commit

- [ ] **Step 1：验证目录结构完整**

```bash
find wealth/ -type f | grep -v ".git" | sort
```

确认：
- `wealth/raw_material/` 有7个文件
- `wealth/wiki/` 有18个 `.md` 文件（12条目 + 6 MOC）
- `wealth/output/` 有文件（不入库）
- `wealth/.gitignore` 存在

- [ ] **Step 2：验证 .gitignore 生效**

```bash
git status wealth/output/ 2>&1
```

期望：`output/` 目录不出现在 git status 中（被忽略）。

- [ ] **Step 3：验证 wiki frontmatter 格式一致**

```bash
grep -l "^---" wealth/wiki/**/*.md | wc -l
```

期望：所有 wiki 文件都有 frontmatter（18个）。

- [ ] **Step 4：Final commit**

```bash
git add wealth/
git status  # 确认 output/ 不在列表中
git commit -m "feat: complete wealth wiki knowledge base restructure"
```

---

## 完成后使用方式

```bash
# 提炼新文章到 wiki
/wealth-extract raw_material/国内外理财对比调研.md

# 更新已有条目
/wealth-sync wiki/税务策略/税损收割.md

# 生成针对性策略建议
/wealth-advise 税务优化
/wealth-advise Roth-IRA配置
```
