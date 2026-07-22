---
title: Risk Reversal（风险逆转）
category: 投资品种
tags: [期权, Risk-Reversal, 方向性策略, Margin]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
freshness: volatile
---

## 定义

风险逆转（Risk Reversal）是同时卖出 OTM Put（收 premium）+ 买入 OTM Call（付 premium），净成本约为零，获得与直接买入股票几乎相同的多头敞口。本质是零成本合成多头（Synthetic Long）。

## 核心要点

- **构建**：卖出 OTM Put（收费）+ 买入 OTM Call（付费）→ 净成本 ≈ $0

- **三种结果**：

| 到期时股价 | 结果 |
|---------|------|
| > Call Strike（大涨）| Call 行权，上涨全享 ✅ |
| Put Strike ~ Call Strike（横盘）| 双方过期，零成本零收益 ⚠️ |
| < Put Strike（大跌）| Put 被 Assign，被迫以 Strike 价买入股票（接盘）❌ |

- **与买入股票的区别**：盈亏图几乎相同，但无需初始资金；代价是下跌时强制接盘（无法止损跑路）
- **必须 Margin 账户** ⚠️：卖出 Put 为 Naked（无现金担保），大多数 IRA/Roth IRA 不允许
- **税务**：premium 收入 = 短期资本利得；高收入年（联邦+CA ~46%）税务成本高
- **看跌版（Bearish Risk Reversal）**：反向构建，买入 Put + 卖出 Call = 合成空头，适合看空但不想借券做空

### 适用场景

| 场景 | 说明 |
|------|------|
| 强烈看涨但不想出资 | 零成本获得上涨敞口 |
| Earnings 方向性押注 | 赌大幅波动方向 |
| 对冲已有空头仓位 | 保护做空仓位 |

## 与其他概念的关系

- [[wiki/投资品种/Collar\|Collar]]：持有股票 + Risk Reversal 的保护版 = Collar
- [[wiki/投资品种/Cash-Secured-Put\|Cash-Secured Put]]：Put 端有现金担保的版本，可在 Roth IRA 执行
- [[wiki/投资品种/Covered-Call\|Covered Call]]：Call 端等价（但 Risk Reversal 的 Put 端是 Naked）

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
