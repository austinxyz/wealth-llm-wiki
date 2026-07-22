---
title: Wheel Strategy（轮转策略）
category: 投资品种
tags: [期权, Wheel, 收入策略]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
freshness: volatile
---

## 定义

轮转策略（Wheel Strategy）是 Cash-Secured Put 与 Covered Call 的循环组合：先卖 Put 等待买入，被 Assign 持股后转卖 Covered Call，被 Call Away 回到现金后重启，每个阶段持续收取 premium。

## 核心要点

- **三阶段循环**：

```
Phase 1：卖 Cash-Secured Put → 收 premium → 等待到期
    ↓（被 Assign，股票以 Strike 价买入）
Phase 2：持有股票 → 卖 Covered Call → 收 premium → 等待到期
    ↓（被 Call Away，股票以 Strike 价卖出）
Phase 3：拿回现金 → 回到 Phase 1
```

- **预期年化**：保守 8–15%，积极 15–30%（取决于标的波动率和 Strike 选择）
- **DTE 最优区**：30–45 天（Theta 衰减最快）
- **Strike 选择**：Put 选 Delta 0.15–0.30（OTM 15–25%）；Call 选 Delta 0.15–0.30（OTM 10–20%）

### 选股标准

| 条件 | 原因 |
|------|------|
| 你愿意长期持有的标的 | 被 Assign 持股时不会恐慌 |
| 中等波动率 | 过低 → premium 太少；过高 → 被套风险大 |
| Option Chain 流动性充足 | 买卖价差合理，易于平仓 |
| 不会暴跌 50%+ | 避免大幅亏损接盘 |

适合：SPY/QQQ/IWM 等宽基 ETF，AAPL/MSFT 等大盘蓝筹。避免：Meme 股、生物科技、小市值投机标的。

- **Roth IRA 可完整执行** ✅（CSP + CC 均无需 Margin）
- **避开 Earnings**：财报前后 IV 剧烈变化，避免在 Earnings Week 卖期权

## 与其他概念的关系

- [[wiki/投资品种/Cash-Secured-Put\|Cash-Secured Put]]：Wheel 第一阶段
- [[wiki/投资品种/Covered-Call\|Covered Call]]：Wheel 第二阶段
- [[wiki/投资品种/Options-DTE选择\|Options DTE 选择]]：决定 Wheel 循环频率的核心参数
- [[wiki/投资品种/期权收益ETF\|期权收益 ETF]]：QYLD/JEPI 是机构帮你自动执行 Wheel 的被动版本

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
