# Options 基础策略（Covered Call / Cash-Secured Put / Wheel）

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
- [ ] `wiki/投资品种/Options-DTE选择.md`
