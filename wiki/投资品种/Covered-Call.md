---
title: Covered Call（备兑看涨）
category: 投资品种
tags: [期权, Covered-Call, 收入策略]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
---

## 定义

备兑看涨（Covered Call）是持有 100 股股票的同时卖出 1 份 Call 期权，收取 premium 作为额外收入，代价是限制股票上行空间。

## 核心要点

- **机制**：持有 100 股 + 卖出 1 份 OTM Call → 立即收取 premium
- **三种结果**：

| 到期时股价 | 结果 |
|---------|------|
| < Strike | Option 过期，保留股票 + premium ✅ |
| ≈ Strike | 可能被 Assign，以 Strike 价卖出股票 + premium |
| > Strike | 被 Assign，股票被买走，收益封顶于 Strike + premium |

- **额外收入**：每月 1–3% premium，持续操作可显著降低持仓 cost basis
- **税务**：premium 收入 = 短期资本利得（普通所得税率）；被 Assign 卖股按持有期分类（>1 年 → 长期）
- **Roth IRA 可执行** ✅（有持仓担保，无需 Margin）
- **不适合**：预期强烈上涨时，会被 Call Away 错过涨幅

## 与其他概念的关系

- [[wiki/投资品种/Wheel-Strategy\|Wheel Strategy]]：Covered Call 是 Wheel 策略的第二阶段（Assign 持股后执行）
- [[wiki/投资品种/Cash-Secured-Put\|Cash-Secured Put]]：Wheel 的第一阶段；两者组合构成 Wheel
- [[wiki/投资品种/Collar\|Collar]]：Covered Call + Protective Put = Collar（下行有保护的版本）
- [[wiki/投资品种/Options-DTE选择\|Options DTE 选择]]：30–45 DTE 是 Covered Call 的黄金区间
- [[wiki/投资品种/期权收益ETF\|期权收益 ETF]]：QYLD/XYLD 是机构层面系统执行 Covered Call 的被动产品

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
