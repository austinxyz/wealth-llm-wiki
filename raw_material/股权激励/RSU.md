# RSU（Restricted Stock Units，限制性股票单位）

**收集日期：** 2026-04-16

## 来源

- [TurboTax: How to Report RSUs or Stock Grants on Your Tax Return](https://turbotax.intuit.com/tax-tips/investments-and-taxes/how-to-report-rsus-or-stock-grants-on-your-tax-return/L55yZieu0)
- [Schwab: Restricted Stock and Performance Stock Taxes](https://www.schwab.com/learn/story/rsu-taxes-and-psu-taxes)
- [Uncle Kam: RSU Tax Treatment Complete 2026 Guide](https://unclekam.com/tax-write-offs/deductions/restricted-stock-units-tax/)
- [Darrow Wealth Management: Restricted Stock Units Taxes, Vesting and Key Facts](https://darrowwealthmanagement.com/blog/restricted-stock-units/)
- [Safe Landing Financial: RSU Guide for Tech Professionals 2026](https://safelandingfinancial.com/rsus/)
- [NerdWallet: How RSUs Are Taxed](https://www.nerdwallet.com/investing/learn/how-are-rsus-taxed)
- [Plancorp: RSU Under-withholding Risk](https://www.plancorp.com/blog/restricted-stock-units-are-you-under-withheld-for-taxes)
- [Summitry: RSU Tax Guide - Vesting, Selling & Reporting](https://summitry.com/blog/how-are-rsus-taxed/)
- [Navalign: RSU Taxes Explained](https://navalign.com/rsu-taxes-explained/)
- [Ametrine Wealth: Basics of RSUs](https://www.ametrinewealth.com/insights/understanding-your-rsus-how-they-are-taxed-and-what-you-need-to-know)

## 核心概念

**RSU（Restricted Stock Units）= 公司承诺未来按 vesting schedule 发股**，常见于科技公司（Google、Meta、Amazon、Apple 等）的员工薪酬包。

**关键税务点**：
- **Vest 当日** = 应税事件（不是 Grant 日，不是卖出日）
- FMV（市价）× Vest 股数 = **普通所得**
- 加入当年 W-2 工资

## Vesting Schedule 类型

### 典型 4 年 Cliff + Monthly（传统科技公司）

```
Grant：100 股
第 1 年：25 股（cliff，满 1 年才发）
第 2-4 年：每月 1/48 = ~2 股/月
```

### "Front-loaded"（如 Amazon）

```
Year 1: 5%
Year 2: 15%
Year 3: 40%
Year 4: 40%
```

Amazon 的激进前端加重设计让员工留到第 3-4 年。

### Yearly Cliff（某些公司）

```
Year 1: 25%（满 1 年发）
Year 2: 25%（满 2 年发）
Year 3: 25%（满 3 年发）
Year 4: 25%（满 4 年发）
```

## Vest 日的税务处理

### 收入确认

```
Vest 股数 × Vest 当日 FMV = 普通所得
→ 加入 W-2 Box 1 工资
→ 按当年边际税率课税
```

### 社保 / Medicare 税（FICA）

- Social Security：6.2%（2026 上限 $176,100）
- Medicare：1.45%（+ 0.9% Additional Medicare for 高收入）
- 雇主也交对应 matched FICA

### 预扣税（Withholding）

**关键陷阱**：RSU 是"Supplemental Income"，雇主默认按**固定 supplemental rate** 预扣：

| 年度 RSU 累计 | 联邦预扣率 |
|-------------|----------|
| < $1,000,000 | **22%** |
| > $1,000,000 | **37%** |

### ⚠️ 预扣不足问题

**如果你的实际边际税率 > 22%**，每次 vest 都在"欠税"：

**例**：湾区单身年薪 $300k
- 边际税率 35%（联邦）+ 9.3% 加州 + 1.45% Medicare = **45.75%**
- RSU vest $100k
- 雇主只扣 22% 联邦 + 加州（州率 supp rate 10.23%）+ 社保医保 ≈ **34%** 实际
- **欠税 ~12% × $100k = $12,000**（到报税时要补）

### 避免意外欠税

1. **增加额外预扣**：W-4 追加预扣 / 季度预缴（Form 1040-ES）
2. **"Sell-to-Cover" + 留现金补税**：vest 时卖掉部分股票，保留额外现金补税差额
3. **高收入者（>$1M）预扣 37%** 通常够了

## Cost Basis（成本基础）

**极其重要**：每 vest 一批的 cost basis = **Vest 当日的 FMV**（不是 grant 日，不是 $0）。

### 为什么重要

- 已在 Vest 当日按普通所得交税
- 这份税**不应**再在卖出时重复计
- Cost basis 记录错误 = **双重征税**

### 典型错误

Schwab / E*Trade / Fidelity 报的 1099-B 有时会**错报 basis 为 $0**（未调整）。必须在报税时**手动调整**到 vest 当日 FMV。

### Form 8949 调整

```
Box B/E（non-reported basis）
→ Code B（"Basis reported to IRS is incorrect"）
→ 填入正确 basis
→ 计算真实资本利得
```

### 例子

- Vest 2025：100 股 @ $200 = $20,000（已在 W-2 交税）
- 卖出 2027：100 股 @ $250 = $25,000
- 正确资本利得：$5,000（$25k - $20k）
- 错误（Basis=$0）：$25,000（多报 $20,000 → 多交 $4-7k 税）

**每年审查 1099-B 和 W-2 对应性**。

## 卖出决策框架

### 立即卖 vs 持有

**经典观点：Vest 当日立即卖 = 等同于"雇主给你现金"**

逻辑：
- Vest 时已交税（相当于现金奖金）
- 不卖 = 主动选择**再次买入公司股票**
- 你愿意用工资奖金买同等股数自家公司股票吗？

### 持有的情景

- **长期资本利得优惠**：持有 > 1 年后卖出，适用 0/15/20% 税率
  - 但 vest 日已交 40-45% 普通所得税
  - 优势仅在**后续增值部分**
- **公司股价强劲看涨**：愿承担集中风险
- **即将退休 / 低收入年**：降低未来资本利得税档

### 集中风险（Concentration Risk）

**铁律**：**单一雇主股票不应超过总投资组合的 10-20%**。

**灾难案例**：
- Enron 员工把 401K + RSU 都放在公司股票
- 2001 破产 → 失业 + 股票归零 + 退休金清零
- **同时失去工资和投资** = 双重打击

**策略**：
- **Sell All on Vest**：最保守、最理性
- **Sell to 20% Cap**：保留部分，超过总资产 20% 的卖掉
- **Hold All**：最激进，赌公司未来

## 税务优化策略

### 1. 年度税务规划

- 预测年度 RSU vest 总额
- 提前估算边际税率
- Q4 检查是否预扣不足 → Form 1040-ES 补缴

### 2. 分散 Vest 日

**减少"集中 vest"冲击**：
- 如果年初 vest 一大批 → 当年收入暴涨可能触发 AMT、NIIT
- 合理情况下选择 quarterly 或 monthly vesting schedule
- 但 vesting schedule 通常由雇主固定，难以改变

### 3. 配合 Roth Conversion Ladder

**低 RSU vest 的年份**（辞职前后）→ 做 Roth Conversion 填充低税档

### 4. 配合税损收割

- RSU 相关股票下跌时 → 卖出锁定亏损抵其他资本利得
- 注意 **[[Wash-Sale-Rule]]**：30 天内不能买回（含新 RSU vest → 可能触发 wash sale）

### 5. 跨年度 vest 时机

- 年底 vest vs 次年初 vest → 跨年移税
- 预计明年收入降低？vest 前跟 HR 讨论延后
- 预计年底前离职？vest 前离职可能失去未 vest 部分

## 离职的 RSU 处理

### Vested RSU
- **已 vest = 你的**，不受影响
- 股票在券商账户（Schwab、Fidelity、E*Trade 等）
- 离职后仍可自由卖出

### Unvested RSU
- **未 vest = 归公司收回**
- 除非合同另有规定（如"加速 vesting" 在公司被收购时）
- 有时 IPO 触发额外 vesting

### 特殊情况

- **退休规则**（某些公司）：55+ 岁 + 15 年以上服务 → 继续 vesting（不需留职）
- **并购加速**（Change-in-Control）：公司被收购时所有 RSU 可能立即 vest
- **辞职带走的"签约奖金 RSU"**：可能有 clawback 条款

## 加州居民特殊

### 源泉扣缴

加州按 **居住日** 分摊 vest 收益：
- Vest 日前 3 年你在加州工作 → 加州税 100%
- 若 vest 日前已搬出加州 → 按"在加州天数 / 总 vesting 天数"比例征税

**策略**：如考虑搬离加州（如德州、佛州无州税），**在 vest 前搬家**可大幅省州税。

### IPO 前搬家

- 私营公司 IPO 前 RSU 可能无流动性
- 但 IPO 后大规模 vest（早期员工"Lockup Expiration"）
- **IPO 前 1-2 年搬到无税州** = 省加州 10-13.3%

### 加州 40 年财富追回（非加州者的悬念）

加州对前加州居民 vest 的**"源自加州的 RSU"**可能多年后仍要追税。复杂情况需专业咨询。

## 与其他概念的关系

- [[ISO-vs-NSO]]：另一种股权激励（期权）
- [[ESPP]]：员工股票购买计划
- [[Wash-Sale-Rule]]：RSU + 买回触发
- [[AMT]]：高 RSU 收入可能触发
- [[NIIT]]：RSU vest 不直接计入 NII，但会推高 MAGI
- [[税损收割]]：RSU 相关股票下跌时可用

## 待提炼为 wiki 条目

- [ ] `wiki/股权激励/RSU.md`
- [ ] `wiki/股权激励/RSU-Cost-Basis.md`
- [ ] `wiki/股权激励/Vest即卖策略.md`
- [ ] `wiki/股权激励/集中风险管理.md`
- [ ] `wiki/税务策略/RSU预扣陷阱.md`
