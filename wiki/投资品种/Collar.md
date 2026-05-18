---
title: Collar（领口策略）
category: 投资品种
tags: [期权, Collar, 下行保护, 集中仓位]
source: "[[raw_material/投资品种-另类/Options-策略]]"
updated: 2026-05-18
status: stable
---

## 定义

领口策略（Collar）是在持有股票的同时买入 OTM Put（保护下跌）+ 卖出 OTM Call（抵消 Put 费用），构建双向保护区间。本质是 Covered Call + Protective Put 的组合，通常可以做到零成本。

## 核心要点

- **构建**：持有 100 股 + 买入 OTM Put（下跌保护）+ 卖出 OTM Call（抵消成本）

- **保护区间**：
  - **上限**：Call Strike —— 超出部分被 Call Away，放弃上行
  - **下限**：Put Strike —— 跌穿后 Put 行权，亏损封顶
  - **区间内**：正常持有，随市场波动

- **零成本 Collar**：选择 premium 相近的 Put 和 Call Strike，净成本 ≈ $0

- **核心用途**：集中持仓风险管理 —— 持有大量单股（如公司 RSU/ESPP 累积）时，锁定已有利润同时保留部分上行空间，而无需立即卖出

- **税务**：卖出 Call 的 premium = 短期资本利得；被 Assign 卖股按持有期分类

- **适合场景**：
  - 持有大量公司股票，受 Insider Trading 窗口期限制不能随时卖
  - 接近退休，需要锁定仓位价值
  - 市场高位、对后市不确定时的临时保护

## 与其他概念的关系

- [[wiki/投资品种/Covered-Call\|Covered Call]]：Collar = Covered Call + 额外买入 Put 保护
- [[wiki/投资品种/Risk-Reversal\|Risk Reversal]]：Collar 的等价结构（持股 + Risk Reversal = Collar）

## 参考来源

- [[raw_material/投资品种-另类/Options-策略\|Options-策略（原始材料）]]
