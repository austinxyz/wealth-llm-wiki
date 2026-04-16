---
title: RSU
category: 股权激励
tags: [RSU, 股权激励, Vest, 普通所得, Cost-Basis, 集中风险, 科技公司]
source: "[[raw_material/股权激励/RSU]]"
updated: 2026-04-16
status: draft
---

# RSU（Restricted Stock Units，限制性股票单位）

## 定义

RSU 是公司承诺未来按 Vesting Schedule 发股的薪酬形式，常见于 Google、Meta、Amazon、Apple 等科技公司。

**核心税务规则**：
- **Vest 当日** = 应税事件（不是 Grant 日，不是卖出日）
- Vest 股数 × Vest 当日 FMV = **普通所得**，加入当年 W-2
- 按当年边际税率课税，同时扣 FICA（Social Security + Medicare）

## 核心要点

### 预扣不足陷阱（最常见问题）

雇主按 **Supplemental Income 固定税率**预扣：
- 年度 RSU < $1,000,000：预扣 **22%**
- 年度 RSU > $1,000,000：预扣 **37%**

**问题**：湾区高收入者实际边际税率常达 37%+13.3% CA+1.45% Medicare ≈ 45-51%，每次 Vest 都在欠税。

**解决方案**：
1. W-4 追加预扣或季度 Form 1040-ES 补缴
2. Sell-to-Cover 时保留额外现金补税差额

### Cost Basis 陷阱（双重征税风险）

每 Vest 批次的 **cost basis = Vest 当日 FMV**，不是 $0，不是 Grant 日价格。

**典型错误**：券商（Schwab/Fidelity/E*Trade）1099-B 有时错报 basis 为 $0 → 导致双重征税。

**正确操作**：在 Form 8949 中手动调整（Code B），填入正确 Vest 日 FMV。

**例子**：Vest 100 股 @ $200（已交税）→ 卖出 @ $250 → 正确利得 $5,000；若 basis 报 $0 则多报 $20,000，多交 $4-7k 税。

### 卖出决策

**立即卖（Sell All on Vest）**：
- 等同于"雇主给现金"，逻辑最清晰
- 不卖 = 主动选择重新买入公司股票
- 消除集中风险

**持有的前提**：
- 强烈看好公司 + 已超过 1 年（适用长期资本利得率）
- 公司股票不超过总组合 10-20%（集中风险铁律）

**教训（Enron 案例）**：401K + RSU 全在公司股票 → 失业 + 股票归零 + 退休金清零

### 加州特别规则

加州按**居住日比例**分摊 Vest 收益：Vest 日前已搬出加州 → 按在加州工作天数比例征税。

策略：计划离开加州的，在 Vest 前搬到德州/佛州可省 10-13.3% 州税。

## 与其他概念的关系

- [[ESPP]] — 另一种股权激励，15% 折扣购股
- [[Wash-Sale-Rule]] — 新 RSU Vest + 卖出亏损股可能触发 Wash Sale
- [[AMT]] — 高 RSU 收入推高 MAGI，可能触发 AMT
- [[税损收割]] — RSU 相关股票下跌时可做税损收割
- [[NIIT]] — RSU vest 不直接计入 NII，但推高 MAGI 触发 3.8% NIIT

## 参考来源

- [TurboTax: How to Report RSUs](https://turbotax.intuit.com/tax-tips/investments-and-taxes/how-to-report-rsus-or-stock-grants-on-your-tax-return/L55yZieu0)
- [Schwab: RSU Taxes and PSU Taxes](https://www.schwab.com/learn/story/rsu-taxes-and-psu-taxes)
- [Plancorp: RSU Under-withholding Risk](https://www.plancorp.com/blog/restricted-stock-units-are-you-under-withheld-for-taxes)
