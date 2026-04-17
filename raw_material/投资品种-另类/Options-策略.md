# Options 策略（Covered Call / Cash-Secured Put / Wheel / Risk Reversal）

**收集日期：** 2026-04-16

## 来源

- [QuantWheel: Wheel Strategy Complete Options Income Guide 2026](https://quantwheel.com/learn/wheel-strategy/)
- [Schwab: Three Things to Know About the Wheel Strategy](https://www.schwab.com/learn/story/three-things-to-know-about-wheel-strategy)
- [OptionsPlay: What is the Wheel Strategy](https://www.optionsplay.com/blogs/what-is-the-wheel-strategy-in-options-trading)
- [Options Trading: The Wheel Strategy Explained](https://www.optionstrading.org/blog/the-wheel-strategy-explained/)
- [IndexBox: Wheel Options Strategy Guide](https://www.indexbox.io/blog/the-wheel-options-strategy-explained-for-income-and-stock-accumulation/)
- [WheelYield: Cash-Secured Puts Guide 2026](https://www.wheelyield.com/articles/cash-secured-put-guide/)
- [Days to Expiry: Wheel Strategy DTE-Optimized Guide](https://www.daystoexpiry.com/blog/wheel-strategy-guide)
- [Options Education: Generating Premium Income With Option Strategies](https://www.optionseducation.org/news/june-webinar-takeaways)
- [Investing With AI: Wheel Strategy Income Guide](https://www.investingwithai.com/wheel-strategy-options-income-guide/)
- [OptionsPilot: Covered Call & Cash Secured Put Calculator](https://optionspilot.app/)

## 核心概念

**Options = 以特定价格在特定日期之前买入或卖出资产的权利**（不是义务）。

本文聚焦三种**保守收入策略**（非投机）：

1. **Covered Call**（备兑看涨）
2. **Cash-Secured Put**（现金担保看跌）
3. **Wheel Strategy**（轮转策略 = 1 + 2 的组合）

## Covered Call（备兑看涨）

### 机制

**已持有 100 股 + 卖出 1 份 Call Option**：

```
你持有 100 股 AAPL @ $190
卖出 1 份 AAPL $200 Call（30 天到期，收 $300 premium）
```

### 三种结果

| 情况 | 30 天后 | 你的结果 |
|------|---------|---------|
| 股价 < $200 | Option 过期作废 | 保留股票 + $300 premium ✅ |
| 股价 = $200 | Option 恰好到价 | 保留股票 + $300 ✅ |
| 股价 > $200 | 被 Assigned（股票被买走） | 卖在 $200 + $300 = $203 实际卖出 |

### 优缺点

✅ **额外收入**：每月 1-3% premium 收入
✅ **降低 cost basis**
✅ **保守策略**（适合长期持股者）

❌ **限制上行**：股价飞涨时你只卖在 strike price
❌ **不保护下行**：股价大跌时 premium 不够覆盖
❌ **每 100 股一份**：小仓位不方便

### 税务

- Premium 收入 = **短期资本利得**（普通所得税率）
- 被 Assign 卖出股票 = 按持有期算（如持有 > 1 年 = 长期）
- 加州全额课税

## Cash-Secured Put（现金担保看跌）

### 机制

**持有现金 + 卖出 1 份 Put Option**：

```
你想买 AAPL，当前 $190
卖出 1 份 AAPL $180 Put（30 天到期，收 $250 premium）
保留 $18,000 现金（用于可能被 Assign 买入）
```

### 三种结果

| 情况 | 30 天后 | 你的结果 |
|------|---------|---------|
| 股价 > $180 | Option 过期 | 保留 $18,000 + $250 premium ✅ |
| 股价 = $180 | 到价 | 可能被 Assign |
| 股价 < $180 | 被 Assign | 买入 100 股 @ $180 → 实际 $177.50（减 premium）|

### 优缺点

✅ **以折扣价买入**：等于设限价单 + 收费等待
✅ **现金产生收益**（等待期间赚 premium）
✅ 如果未被 Assign → 白赚 premium

❌ **股价暴跌时被迫买入**（如 AAPL 跌到 $150，你 $180 买入 = 亏 $30/股）
❌ **资金锁定**（$18,000 必须保留）
❌ **机会成本**（如果股价涨到 $220，你没买到）

## Wheel Strategy（轮转策略）⭐ 组合版

### 三阶段循环

```
Phase 1: Sell Cash-Secured Put → 收 premium → 等
  ↓（被 Assign）
Phase 2: 持有股票 → Sell Covered Call → 收 premium → 等
  ↓（被 Call Away）
Phase 3: 拿到现金 → 回到 Phase 1
```

**不断循环**，每个阶段都在收 premium。

### 预期回报

- 保守策略：**8-15% 年化**
- 激进策略：**15-30% 年化**
- 取决于：股票选择、strike 选择、DTE（距到期天数）、市场波动

### 选股标准（Wheel 适合的股票）

1. **你愿意持有的股票**（不怕被 Assign）
2. 中等波动（过低 → premium 太少；过高 → 被套风险大）
3. 有流动性的 option chain
4. 不太可能暴跌 50%+

**典型 Wheel 股票**：
- 大盘蓝筹：AAPL、MSFT、AMZN、GOOGL
- 高分红稳定股：KO、PG、JNJ
- ETF：SPY、QQQ、IWM

**避免**：
- Meme 股（GME、AMC）
- 高波动生物科技
- 将退市的公司

### DTE（距到期天数）选择

| DTE | Premium 年化率 | 风险 |
|-----|-------------|------|
| 7 天 | 最高 | 频繁交易 / 被套 |
| **30-45 天** | ⭐ 最优 | 平衡 premium 和时间衰减 |
| 60-90 天 | 较低 | 占用资金久 |

**30-45 DTE 是 Wheel 黄金区**（Theta Decay 最快）。

### Strike 选择

**Put Strike**：
- OTM 15-25%（如股价 $190 → 卖 $160-$165 Put）
- Delta 0.15-0.30

**Call Strike**：
- OTM 10-20%（如股价 $190 → 卖 $210-$220 Call）
- Delta 0.15-0.30

## Options 收入的税务

### 短期 vs 长期

- **Premium 收入**（Option 过期作废）= **短期资本利得**
- **被 Assign 的股票**：按持有时间算（Put assign 后开始算持有期）
- **频繁交易者**：可能被视为 "Trader" → 不同税务处理

### 加州居民

- 短期利得按普通所得（最高 37% + 13.3% = 50.3%）
- 高频 Wheel → 收入主要是短期 → **税后收益打折严重**

### 最优账户

- **IRA / Roth IRA** 内操作 Wheel → 无税务摩擦
- 但 IRA 不能 naked options（只能 Covered Call + Cash-Secured Put）
- Roth IRA 内 Wheel = premium **永远免税** ⭐

## Options 策略的风险管理

### 1. 仓位控制
- 单只股票的 Put exposure 不超过组合 5-10%
- 总 options exposure 不超过 20-30%

### 2. 下跌保护
- 设 mental stop-loss（如股价跌 20% 就买回 Put 止损）
- 不要卖 ATM（at-the-money）Put

### 3. 避免 Earnings / 重大事件
- 财报前后 options 波动极大
- 避免在 earnings week 卖 Covered Call / Put

## Options vs 其他收入策略

| 策略 | 年化回报 | 复杂度 | 税务效率 | 适合 |
|------|---------|--------|---------|------|
| Covered Call | 3-8% + 股票涨幅 | 低 | 短期利得 | 长期持股者 |
| Cash-Secured Put | 8-15% | 中 | 短期利得 | 想打折买股 |
| Wheel | 12-30% | 中 | 短期利得 | 主动管理者 |
| 高分红 ETF | 3-5% | 极低 | 合格分红 15% | 被动者 |
| Bond Ladder | 4-5% | 低 | 利息 | 退休者 |

## Risk Reversal（风险逆转）

### 构建方式

**同时操作两端**：

```
卖出 1 份 OTM Put（较低 Strike）  → 收 premium
买入 1 份 OTM Call（较高 Strike） → 付 premium
                                  净成本 ≈ $0（零成本建仓）
```

**例子**：股价 $190

```
卖出 AAPL $170 Put（30天）→ 收 $3.00（$300）
买入 AAPL $210 Call（30天）→ 付 $3.00（$300）
净成本 = $0
```

### 三种结果

| 到期时股价 | 卖的 Put | 买的 Call | 结果 |
|---------|---------|---------|------|
| **< $170**（大跌） | 被 Assign → 被迫买入 100 股 @$170 | 过期 | ❌ **亏损**（接盘） |
| **$170-$210**（震荡） | 过期 | 过期 | ⚠️ **零成本零收益** |
| **> $210**（大涨） | 过期 | 行权 → 你以 $210 买入 | ✅ **盈利**（上涨全享）|

### 本质

**Risk Reversal ≈ 零成本的合成多头（Synthetic Long）**：
- 盈亏图与直接买入股票几乎相同
- 但不需要一分钱初始资金
- 代价：下跌时有被迫接盘的义务

### 看跌版（Bearish Risk Reversal）

反向构建 → 合成空头：
```
买入 OTM Put（看跌获利）
卖出 OTM Call（出资买 Put）
```
适合看空但不想借券做空。

### 适用场景

| 场景 | 说明 |
|------|------|
| **强烈看涨但不想出资** | 零成本获得上涨 exposure |
| **替代买入股票** | 用 margin 代替现金 |
| **对冲已有空头** | 保护做空仓位 |
| **Earnings 方向性押注** | 赌大幅波动方向 |
| **机构方向性交易** | 大资金常用 |

### 与其他策略对比

| 策略 | 初始成本 | 上涨收益 | 下跌风险 | 适合 |
|------|---------|---------|---------|------|
| **买入股票** | 全额 | 无限 | 全额（但可止损） | 长期 |
| **买入 Call** | premium | 无限 | 仅 premium | 看涨赌方向 |
| **Cash-Secured Put** | 锁定现金 | 仅 premium | 被迫接盘 | 折价买入 |
| **Risk Reversal** | **~$0** | **无限** | **被迫接盘** | 零成本做多 |
| **Covered Call** | 持有股票 | 有限 | 持股风险 | 持股收租 |

### 风险提示 ⚠️

1. **下跌风险 = Naked Put 全部风险**
   - 股价跌到 $0 → 理论最大亏损 = Strike × 100（如 $170 × 100 = $17,000）
   - 但实际上有 margin call 强制平仓

2. **需要 Margin 账户**
   - 卖出 Put 是 "Naked"（无担保）→ 需要 margin
   - Margin 要求通常为 Strike × 20-30%

3. **不适合退休账户**
   - 大多数 IRA / Roth IRA **不允许 Naked Put**
   - Cash-Secured Put 可以，但 Risk Reversal 的 Put 端不是 cash-secured

4. **波动率风险（Vega）**
   - 两端 Vega 可能不对称
   - 波动率上升通常对 Risk Reversal 有利（Call 涨更多）
   - 波动率下降反之

5. **早期行权风险（美式期权）**
   - 卖出的 Put 可能在到期前被 Assign
   - 特别是 ex-dividend 日前后

### 高级变种

#### Collar（领口策略）

**已持有股票 + Risk Reversal 的保护版**：
```
持有 100 股
买入 OTM Put（保护下跌）
卖出 OTM Call（出资买 Put）
= Covered Call + Protective Put
```
适合：已有大量集中持仓（如 EBAY、NVDA），想保护又不想出资。

#### LEAPS Risk Reversal

用**长期期权**（1-2 年到期）做 Risk Reversal：
- 更多时间让观点兑现
- Put premium 更高（收入多）
- 但 margin 占用时间长

### 税务考量

- **卖出 Put（收 premium）**：短期资本利得（普通所得税率）
- **买入 Call 行权**：持有期从行权日开始算（短期 unless 持有 >1 年）
- **被 Assign（Put 端）**：买入股票的 cost basis = Strike - 收到的 premium
- **在高收入年**（2026 $250k+）：短期利得 ~45% 税率 → 注意
- **最优账户**：因为需要 margin → 只能在 Taxable 账户

---

## 与其他概念的关系

- [[Asset-Location]]：Options 在 Roth IRA 最优
- [[RSU]]：持有公司股票可做 Covered Call（但注意 insider trading 规则）
- [[税损收割]]：Option 亏损可抵其他利得
- [[DCA定投]]：Cash-Secured Put = "带 premium 的定投"
- [[杠杆ETF]]：Covered Call 在 TQQQ 上不推荐（太波动）

## 待提炼为 wiki 条目

- [ ] `wiki/投资品种/Covered-Call.md`
- [ ] `wiki/投资品种/Cash-Secured-Put.md`
- [ ] `wiki/投资品种/Wheel-Strategy.md`
- [ ] `wiki/投资品种/Risk-Reversal.md`
- [ ] `wiki/投资品种/Collar.md`
- [ ] `wiki/投资品种/Options-DTE选择.md`
