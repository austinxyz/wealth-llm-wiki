# ESPP（Employee Stock Purchase Plan，员工股票购买计划）

**收集日期：** 2026-04-16

## 来源

- [Fidelity: ESPP Qualifying and Disqualifying Dispositions PDF](https://workplaceservices.fidelity.com/bin-public/070_NB_SPS_Pages/documents/dcl/shared/StockPlanServices/ESPP%20Qualifying%20and%20Disqualifying%20Dispositions.pdf)
- [Morgan Stanley at Work: ESPP Qualifying Disposition](https://www.morganstanley.com/atwork/employees/learning-center/articles/qualifying-disposition-espp)
- [Schwab Equity Award Center: ESPP](https://eac.schwab.com/equity101/espp)
- [TurboTax: Employee Stock Purchase Plans](https://turbotax.intuit.com/tax-tips/investments-and-taxes/employee-stock-purchase-plans/L8NgMFpFX)
- [Phoenix Strategy Group: Qualifying vs Disqualifying ESPP Sales](https://www.phoenixstrategy.group/blog/qualifying-vs-disqualifying-espp-sales-tax-differences)
- [SmartAsset: ESPP Qualifying Disposition Rules](https://smartasset.com/investing/espp-qualifying-disposition)
- [Legal Clarity: When Is the Holding Period Met for an ESPP?](https://legalclarity.org/when-is-the-holding-period-met-for-an-espp/)
- [Zajac Group: ESPP Tax Rules and Qualifying Dispositions](https://zajacgrp.com/insights/espp-tax-rules-you-need-to-know-and-how-theyre-affected-by-qualifying-dispositions/)
- [Zajac Group: How a Qualifying Disposition Impacts Your ESPP](https://zajacgrp.com/insights/how-a-qualifying-disposition-impacts-your-espp/)
- [Smart Finance: Stock Options & ESPP Tax Guide 2026](https://smartfinance.fyi/articles/stock-options-espp-tax-guide-iso-nso-qualifying-dispositions)

## 核心概念

**ESPP = 员工用工资扣款按折扣价购买公司股票**的福利计划。

**典型结构**：
- 工资扣款率 1-15%（IRS 上限 $25,000/年）
- **折扣率**：5-15%（常见 15%）
- **Lookback Provision**：按 Offering Date 和 Purchase Date 较低价格的 FMV × (1 - 折扣率) 购买
- **Offering Period**：6-24 个月（通常 6 个月）

ESPP 是**年化收益率最高的员工福利**（15% 折扣 + Lookback），**几乎必参加**（如现金流允许）。

## 典型机制

### Qualified ESPP（Section 423 Plan，大多数）

**基本流程**：
1. Enrollment：选择扣款率（1-15%）
2. Offering Period 开始（Offering Date / Grant Date）
3. 工资每期扣款到 ESPP 账户
4. Purchase Period 结束（Purchase Date）
5. 累积资金按优惠价购买股票
6. 股票入你的券商账户
7. 可以立即卖或持有

### 典型例子（15% 折扣 + 6 个月 Lookback）

**时间线**：
- 2026 年 1 月 1 日（Offering Date）：公司股价 $100
- 2026 年 1-6 月：你每期扣款，累计 $5,000
- 2026 年 6 月 30 日（Purchase Date）：公司股价 $150
- 购买价 = min($100, $150) × 85% = $85
- $5,000 / $85 ≈ **58.8 股**
- **立即 FMV = 58.8 × $150 = $8,820**
- **瞬间浮盈：$3,820（76% "returns" on $5,000）**

## 税务处理：两种处置

### Disposition 定义

"Disposition" = 卖出、赠与、转账给账户外

### Qualifying Disposition（合格处置）

**同时满足**：
1. 持有 **>1 年**（Purchase Date 后）
2. 持有 **>2 年**（Offering Date 后）

**税务**：
- **普通所得部分**：较小者：
  - Offering Date FMV × 折扣率
  - Sale Price - Purchase Price
- **剩余部分**：**长期资本利得**（0/15/20%）

### Disqualifying Disposition（不合格处置）

任一条件不满足：
- 持有 ≤ 1 年（Purchase Date 后）
- 持有 ≤ 2 年（Offering Date 后）

**税务**：
- **普通所得部分**：Purchase Date FMV - Purchase Price（即**真实折扣**部分）
- **剩余部分**：资本利得（长期/短期看持有期）

## 实际税务对比例子

### 继续上例（立即卖 vs 持有 2 年）

#### 场景 A：Purchase 后立即卖（Disqualifying）

- Sale Date = Purchase Date，Sale Price = $150
- **普通所得** = $150 - $85 = $65 × 58.8 股 = **$3,822**
- **资本利得** = $0
- 总税务（35% 档）= $3,822 × 35% = **$1,338**
- **净收益** = $3,822 - $1,338 = $2,484

#### 场景 B：持有到 Qualifying Disposition（2 年 +）

假设 2 年后股价 $200。

- Sale Price = $200，Purchase Price = $85
- 总利得 = ($200 - $85) × 58.8 = $6,762
- **普通所得**（较小）：
  - Offering Date FMV × 折扣率 = $100 × 15% = $15/股 × 58.8 = **$882**
  - 或 Sale - Purchase = $115 × 58.8 = $6,762
  - **取较小** = $882
- **长期资本利得** = $6,762 - $882 = **$5,880**
- 税务（假设联邦 35% + 长期 15% + NIIT 3.8%）：
  - $882 × 35% = $309
  - $5,880 × (15% + 3.8%) = $1,105
- **总税** = $1,414
- **净收益** = $6,762 - $1,414 = **$5,348**

#### 对比

| 策略 | 毛利 | 税 | 净收益 |
|------|------|----|----|
| 立即卖 | $3,822 | $1,338 | $2,484 |
| Qualifying 持有 2 年 | $6,762 | $1,414 | $5,348 |

**持有 2 年收益翻倍**—— 但前提是**股价不跌**。

## "立即卖" vs "等 Qualifying" 决策

### 立即卖的理由（推荐给大多数人）

- **锁定折扣利润**：$5k 投入瞬间变 $8,820（不论后续股价）
- **无集中风险**：已有 RSU → 再加 ESPP 持有太集中
- **税务简单**：同年处理完
- **年化收益最优**：ESPP 折扣是真正的 "free money"

### 等 Qualifying 的理由

- 强烈看好公司未来
- 税务上省钱（如上例）
- 公司股价稳定 / 上涨趋势
- 整体组合不过度集中

### 数学分析

**"立即卖 + 再买其他 ETF 持有 2 年" vs "持有 ESPP 股票 2 年"**

两者都持有 2 年，但后者集中风险在一只股票上。如果你坚信公司会跑赢市场 → 持有 ESPP。否则 → **立即卖 + VTI/VOO**。

## 扣款率决策

### IRS 上限：$25,000/年（FMV at Offering Date）

**实际限制**：公司 plan 可能设更低上限（如 15% 工资）。

### 最大化策略

对**现金流允许**的人：
- **扣款率拉满**（15% 或 plan 最高）
- 基于 15% 折扣 × 拉满 = 年化收益 **17.6%+**（未计 Lookback）
- 远高于股市长期平均 8-10%

### 如何负担

ESPP 扣款从税后工资，6 个月后才能买到折扣股票（然后卖出）。**短期现金流压力**：

- 解决方案 1：用信用卡循环 6 个月（低利率卡或 0% APR）
- 解决方案 2：用紧急基金临时周转（Purchase 后立即补回）
- 解决方案 3：只扣部分（如 5%）如现金紧张

## 2026 税务规划要点

### 1. Purchase Date 当天就要做决策

"立即卖" 需要在几个工作日内操作。

### 2. 预扣税不足

ESPP 普通所得部分通常**不预扣税**（折扣部分在 W-2 上报告，但可能年底才加）。
- 提前预估税额
- Form 1040-ES 季度补缴
- 否则年底大笔税单

### 3. Cost Basis 陷阱（与 [[RSU]] 类似）

- 券商 1099-B 常报**错误** cost basis
- 必须手动调整到**Purchase Date FMV**（包含折扣）
- 避免双重征税

### 4. Qualifying 2 年期限要精确

日历算准：
- 2026 年 1 月 1 日 Offering Date
- 2026 年 6 月 30 日 Purchase Date
- **Qualifying 最早卖出**：2028 年 1 月 2 日（Offering + 2 年）AND 2027 年 7 月 1 日（Purchase + 1 年）
- 2028 年 1 月 2 日 = Offering Date 条件满足（较晚）
- **注意"more than" 1 年和 2 年，不是 "1 年 or more"**

## 离职时 ESPP

### Enrolled 但未到 Purchase Date
- 扣款退回（无折扣）
- 失去当期 ESPP 机会

### 已 Purchase
- 股票归你所有
- 持有期继续计算
- 可在任意时间卖出（Qualifying 规则不受离职影响）

## 与其他概念的关系

- [[RSU]]：另一种股权激励
- [[ISO-vs-NSO]]：期权类
- [[AMT]]：ESPP 一般不触发 AMT（不是 Preference Item）
- [[税损收割]]：ESPP 亏损时可做
- [[Wash-Sale-Rule]]：ESPP 卖出后 30 天不能买回同股
- [[Asset-Location]]：ESPP 必然在 Taxable 账户

## 待提炼为 wiki 条目

- [ ] `wiki/股权激励/ESPP.md`
- [ ] `wiki/股权激励/Qualifying-Disposition-ESPP.md`
- [ ] `wiki/股权激励/ESPP-立即卖策略.md`
- [ ] `wiki/股权激励/Lookback-Provision.md`
