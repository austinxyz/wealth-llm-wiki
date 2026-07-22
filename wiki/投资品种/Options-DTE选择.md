---
title: Options DTE 选择
category: 投资品种
tags: [期权, DTE, Theta-Decay, 时间价值]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
freshness: volatile
---

## 定义

DTE（Days to Expiration）是期权距到期日的天数，直接决定 Theta（时间价值衰减速度）和 premium 高低。对于期权卖方（Covered Call / CSP / Wheel），选择合适的 DTE 是策略回报的关键变量。

## 核心要点

- **Theta 衰减规律**：期权的时间价值在到期前最后 30–45 天衰减速度最快（加速曲线）；卖方想在 Theta 衰减最快的阶段持仓
- **黄金 DTE：30–45 天** ⭐ —— Covered Call 和 Cash-Secured Put 的推荐区间

| DTE | Premium 年化率 | Theta 衰减 | 主要风险 | 适合策略 |
|-----|-------------|-----------|---------|---------|
| 0–7 天（Weeklies）| 最高（年化）| 极快 | 频繁交易、gamma 风险大 | 高频短线 |
| **30–45 天** | **最优平衡** | **最快区间** | 平衡 | **CC / CSP / Wheel ⭐** |
| 60–90 天 | 中等 | 中等 | 资金占用久 | 较保守收入策略 |
| 180天+（LEAPS）| 最低 | 缓慢 | 长期持仓风险 | Risk Reversal Call 端 |

- **Strike 与 DTE 联动**：DTE 越长 → 同 Delta 的 Strike 离当前价越远（需要更深 OTM 才能达到相同 Delta）
- **避开 Earnings**：财报前后 IV（隐含波动率）急剧波动，持有含 Earnings 周的 30 DTE 期权风险极高，建议跳过或提前平仓
- **实操节奏**：30 DTE ≈ 每月滚动一次，一年约 12 轮循环

## 与其他概念的关系

- [[wiki/投资品种/Covered-Call\|Covered Call]]：30–45 DTE 是 CC 的推荐区间
- [[wiki/投资品种/Cash-Secured-Put\|Cash-Secured Put]]：同上，30–45 DTE 最优
- [[wiki/投资品种/Wheel-Strategy\|Wheel Strategy]]：DTE 决定 Wheel 循环速度，30 DTE ≈ 每月一轮

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
