---
title: ESPP
category: 股权激励
tags: [ESPP, 员工股票购买计划, 折扣, Lookback, Qualifying-Disposition, 股权激励]
source: "[[raw_material/股权激励/ESPP]]"
updated: 2026-04-16
status: draft
---

# ESPP（Employee Stock Purchase Plan，员工股票购买计划）

## 定义

ESPP 是员工用工资扣款按折扣价购买公司股票的福利计划（Section 423 Qualified Plan）。

**典型结构**：
- 工资扣款率 1-15%（IRS 年度上限 $25,000）
- **折扣率**：通常 15%
- **Lookback Provision**：按 Offering Date 和 Purchase Date 两者较低价格的 85% 购买
- **Offering Period**：通常 6 个月

ESPP 是年化收益率极高的员工福利，现金流允许时**几乎必参加**。

## 核心要点

### Lookback 的威力

**典型例子**（15% 折扣 + 6 个月 Lookback）：
- 1 月 1 日（Offering Date）股价 $100
- 6 月 30 日（Purchase Date）股价 $150
- 购买价 = min($100, $150) × 85% = **$85**
- $5,000 投入 → 58.8 股，FMV $8,820
- **瞬间浮盈 $3,820（76%）**

### 两种处置方式的税务差异

#### Qualifying Disposition（合格处置）
同时满足：持有 >2 年（自 Offering Date）且 >1 年（自 Purchase Date）

- **普通所得**：取较小者（Offering Date FMV × 折扣率 vs Sale - Purchase Price）
- **剩余部分**：长期资本利得（0/15/20%）
- **税务最优**

#### Disqualifying Disposition（不合格处置）
任一条件不满足（包括立即卖）

- **普通所得**：Purchase Date FMV - Purchase Price（即真实折扣）
- **剩余部分**：资本利得（长/短期看持有期）

### 立即卖 vs 等 Qualifying（2 年）对比

继续上例，2 年后股价 $200：

| 策略 | 毛利 | 税（35% 档） | 净收益 |
|------|------|------------|--------|
| 立即卖 | $3,822 | $1,338 | $2,484 |
| Qualifying 持有 2 年 | $6,762 | $1,414 | **$5,348** |

**持有 2 年净收益翻倍**——但前提是**股价不跌**。有集中风险时建议立即卖。

### 预扣不足 + Cost Basis 陷阱

- ESPP 普通所得部分通常**不预扣税**，年底才加入 W-2 → 须季度 1040-ES 补缴
- 券商 1099-B 常错报 Cost Basis（未计折扣） → 必须手动调整到 Purchase Date FMV
- 与 [[RSU]] 相同，错误 basis 导致双重征税

### 2 年期限精确计算

- 2026 年 1 月 1 日 Offering Date，6 月 30 日 Purchase Date
- Qualifying **最早卖出**：2028 年 1 月 2 日（Offering +2 年，两个条件中较晚的）
- 注意"more than" 1 年/2 年（严格 >，不是 ≥）

## 与其他概念的关系

- [[RSU]] — 同为科技公司核心股权激励，税务逻辑相似
- [[Wash-Sale-Rule]] — ESPP 卖出后 30 天内不能买回同股
- [[AMT]] — ESPP（Section 423）一般不触发 AMT Preference Item
- [[Asset-Location]] — ESPP 必然在 Taxable 账户
- [[集中风险]] — 同时有 RSU + ESPP 时，单一公司敞口可能超标

## 参考来源

- [Fidelity: ESPP Qualifying and Disqualifying Dispositions](https://workplaceservices.fidelity.com/bin-public/070_NB_SPS_Pages/documents/dcl/shared/StockPlanServices/ESPP%20Qualifying%20and%20Disqualifying%20Dispositions.pdf)
- [TurboTax: Employee Stock Purchase Plans](https://turbotax.intuit.com/tax-tips/investments-and-taxes/employee-stock-purchase-plans/L8NgMFpFX)
- [Schwab Equity Award Center: ESPP](https://eac.schwab.com/equity101/espp)
