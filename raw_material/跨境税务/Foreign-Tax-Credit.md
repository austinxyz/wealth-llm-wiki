# Foreign Tax Credit（境外税收抵免，Form 1116）

**收集日期：** 2026-04-16

## 来源

- [IRS Form 1116](https://www.irs.gov/pub/irs-pdf/f1116.pdf)（官方）
- [IRS: Instructions for Form 1116 (2025)](https://www.irs.gov/instructions/i1116)（官方）
- [IRS: Foreign Tax Credit](https://www.irs.gov/individuals/international-taxpayers/foreign-tax-credit)（官方）
- [IRS 2025 Instructions for Form 1116 PDF](https://www.irs.gov/pub/irs-pdf/i1116.pdf)（官方）
- [Greenback: Form 1116 for Expats](https://www.greenbacktaxservices.com/knowledge-center/form-1116/)
- [Universal Tax Professionals: 2026 Foreign Tax Credit (FTC) Guide](https://universaltaxprofessionals.com/foreign-tax-credit/)
- [TurboTax: Claiming the Foreign Tax Credit with Form 1116](https://turbotax.intuit.com/tax-tips/military/filing-irs-form-1116-to-claim-the-foreign-tax-credit/L2ODfqp89)
- [Tax Samaritan: Foreign Tax Credit For Expats](https://www.taxsamaritan.com/tax-article-blog/foreign-tax-credit-us-expats/)

## 核心概念

**Foreign Tax Credit（FTC）= 你在外国已缴所得税，可以抵扣美国税**。是美国人解决双重征税问题的**核心工具**，远比 [[中美税收协定]] 的优惠更实用。

### 两种形式

1. **Tax Credit（首选）**：外国税 × 100% 抵美国税（1 美元外国税抵 1 美元美国税）
2. **Tax Deduction**（次选）：作为 itemized deduction（仅省 22-37% × 外国税）

几乎总是选 Credit —— 每 $1 救 $1 > 每 $1 救 $0.30。

## 适用条件

### 四个必要条件

1. 该税必须是**所得税性质**（Income Tax 或 in lieu of）
2. 必须是**合法且实际已缴**
3. 必须是**你本人的义务**
4. 必须是**外国政府征收**

### ✅ 符合

- 中国个人所得税
- 中国股息 / 利息预扣税（10%）
- 加拿大、欧洲等国所得税

### ❌ 不符合

- 外国销售税、增值税（VAT）、房产税
- 社保 / 医保缴费（除非与美国有社保总协定）
- 外国赎回产品的退保费
- 外国罚款 / 利息

## 计算限制公式

```
FTC = min(
    外国已缴税,
    美国税 × (外国来源收入 / 全球应税收入)
)
```

**含义**：你不能用外国税抵免"美国来源收入"上的税。

### 示例

- 美国应税收入：$100,000（总收入）
  - 其中美国来源：$70,000
  - 中国来源：$30,000
- 美国税总额：$18,000
- 中国已缴税：$6,000

**限制**：
```
FTC 上限 = $18,000 × ($30,000 / $100,000) = $5,400
```

- 你只能抵 **$5,400**（< $6,000 实际缴税）
- 剩余 **$600** 可结转

## 结转规则

- **未用完的 FTC 可前递 1 年 + 后递 10 年**
- 但每年都按 category 单独追踪（见下）
- 高税率国家居住者容易"超额 FTC"→ 结转

## 收入分类（Category）⚠️

**关键复杂度**：FTC 按**收入类别**分别计算，不能跨类别抵免。

### 主要类别

1. **Passive Income**（被动）：利息、分红、资本利得、租金 — 大多数个人适用
2. **General Category**（一般）：工资、自雇收入
3. **GILTI**（全球无形低税收入）：企业所得，罕见
4. **Branch Income**：海外分支经营
5. **Income Re-sourced by Treaty**：协定重定来源的收入

**每个类别需要独立 Form 1116**。

### 例子

- 你在中国上班（工资 $80k，交中国税 $8k）= General
- 你持有中国银行利息（$500，交 10% 预扣 = $50）= Passive

这两个**不能互通抵免**。需要分别填两张 Form 1116。

## 重要简化：1116 Election

### $300 / $600 简化规则

如果你满足以下**全部**条件，可以**免填 Form 1116**，直接在 1040 上抵免：

- 所有外国税来自**Passive Income**
- 合计外国税 < **$300**（Single / HoH） 或 **$600**（MFJ）
- 所有外国收入来自 **1099-DIV、1099-INT** 等合格报表

**实用场景**：
- 美国券商买了 VXUS（国际 ETF）
- 年底 1099-DIV 上有"Foreign Tax Paid: $250"
- MFJ 且全部是被动 → 直接抵免，**无需 Form 1116**

⚠️ 但此简化 **放弃结转权** 和精确限制计算。对多数人无损。

## 与 FEIE 的对比

**Foreign Earned Income Exclusion（FEIE，Form 2555）**：
- 排除 ~$132,900（2026）工资性境外收入
- 不需要算 FTC

| 维度 | FTC | FEIE |
|------|-----|------|
| 适用收入 | 任何外国所得 | 仅"Earned"（工资/自雇） |
| 高税国（>美国）有利 | ✅ | ❌ |
| 低税国（<美国）有利 | ❌ | ✅ |
| 结转 | 10 年 | ❌ |
| 影响退休账户供款 | 不影响 | 排除后不能供 IRA |
| 境内居住 | ✅ | ❌（需海外 330/365 天或 Bona Fide） |

**大多数在美国居住者的境外收入用 FTC，在海外居住工资收入用 FEIE**。

## 中国场景实操

### 场景 A：美国居住 + 中国被动收入

**收入**：
- 中国银行利息（人民币）：$1,500（中国预扣 10% = $150）
- 中国分红（A 股）：$3,000（中国预扣 20%，但对美国人协定 10% = $300）

**操作**：
- 1040 Schedule B 列明利息和分红（换 USD）
- 1040 的外国税 = $450
- < MFJ $600 → 直接抵免（无需 Form 1116）

### 场景 B：美国居住 + 中国租金

**收入**：
- 中国房产租金：$12,000/年
- 中国个人所得税：$1,200

**操作**：
- 1040 Schedule E 列明
- 需要 Form 1116（Passive category）
- 按上述限制公式计算

### 场景 C：中国居住 + 中国工资

**收入**：
- 中国工资：$80,000
- 中国个人所得税：$12,000

**操作**：
- 1040 列明工资
- 可选：FEIE（Form 2555）先排除 ~$132,900 → 如果工资 $80k 全排除则不用 FTC
- 或：FTC（Form 1116 General category）
- **组合策略**：FEIE + 超出部分用 FTC

## 常见错误

### 错误 1：不报收入就不用抵

**误解**：中国账户 $500 利息不想报。
**现实**：必须报，但可抵免。不报 = 违规（见 [[FBAR]]、[[FATCA]]）。

### 错误 2：FTC 抵 100%

**误解**：外国税 = 全部抵美国税。
**现实**：看限制公式（美国税 × 外国收入比例）。

### 错误 3：忽略分类

**误解**：所有外国税合并算。
**现实**：必须按 category 分开。工资 + 利息不能混抵。

### 错误 4：PFIC 收入忽略

中国基金 → [[PFIC]] 特殊规则，FTC 计算复杂，需专业税务师。

### 错误 5：FEIE 优于 FTC

**情况不同**：
- 中国工资 < $132k + 低税国 → FEIE 优
- 中国工资 > $132k 或 高税国 → FTC 优

## 与其他概念的关系

- [[FBAR]]：报账户的同时报 FTC
- [[Form-8938]]：一起申报
- [[中美税收协定]]：理论减税但实际靠 FTC
- [[PFIC]]：PFIC 的 FTC 有额外限制
- [[双边资产策略]]：FTC 是双边核心工具

## 待提炼为 wiki 条目

- [ ] `wiki/中美对比/Foreign-Tax-Credit.md`
- [ ] `wiki/中美对比/FTC-vs-FEIE选择.md`
- [ ] `wiki/中美对比/FTC简化规则.md`
