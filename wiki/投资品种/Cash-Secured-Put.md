---
title: Cash-Secured Put（现金担保看跌）
category: 投资品种
tags: [期权, Cash-Secured-Put, 收入策略]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
---

## 定义

现金担保看跌（Cash-Secured Put）是持有对应现金的同时卖出 1 份 Put 期权，收取 premium，等待在目标价买入股票。本质是"带 premium 的限价单"——不论是否被 Assign 都有收益。

## 核心要点

- **机制**：锁定现金（= Strike × 100）+ 卖出 1 份 OTM Put → 收取 premium

- **三种结果**：

| 到期时股价 | 结果 |
|---------|------|
| > Strike | Option 过期，保留现金 + premium（白赚）✅ |
| ≈ Strike | 可能被 Assign |
| < Strike | 被 Assign，以 Strike 价强制买入 100 股（实际 cost basis = Strike - premium）|

- **真实成本**：被 Assign 时买入股票的 cost basis = Strike - premium（等于打了折扣买入）
- **税务**：premium 收入 = 短期资本利得；被 Assign 后持股的持有期从 Assign 日开始计算
- **Roth IRA 可执行** ✅（有现金担保，无需 Margin）
- **主要风险**：股价暴跌时被迫高价接盘（premium 无法覆盖大幅下跌）

## 与其他概念的关系

- [[wiki/投资品种/Wheel-Strategy\|Wheel Strategy]]：Cash-Secured Put 是 Wheel 策略的第一阶段
- [[wiki/投资品种/Covered-Call\|Covered Call]]：被 Assign 持股后，下一步转为卖 Covered Call
- [[wiki/投资品种/Options-DTE选择\|Options DTE 选择]]：30–45 DTE 是 CSP 的黄金区间

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
