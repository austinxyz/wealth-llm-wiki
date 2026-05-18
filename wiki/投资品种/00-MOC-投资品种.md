---
title: 投资品种总览
category: MOC
tags: [投资品种, MOC]
updated: 2026-05-18
status: stable
---

# 投资品种

## 条目列表

- [[ETF总览]] — 指数基金，低费率，分散风险
- [[杠杆ETF]] — 2-3倍杠杆，适合短持，长持有衰减风险
- [[IUL]] — 指数型万能寿险，保险+投资混合产品
- [[REITs]] — 90% 分配要求，QBI 20% 扣除，必须放 IRA
- [[Target-Date-Fund]] — 一站式退休基金，Glide Path，Vanguard/Schwab 0.08%
- [[主动vs被动投资]] — SPIVA 20 年数据 90% 主动跑输，Bogleheads 被动哲学
- [[Bond-Ladder]] — 阶梯式到期策略，确定现金流，Treasury/CD/Muni 选择
- [[Municipal-Bonds]] — 市政债双免（联邦+加州），TEY 3.5%=应税 7.0%
- [[Crypto-ETF]] — IBIT/ETHA Spot ETF，IRS 视为 Property，无 Wash Sale
- [[期权收益ETF]] — QYLD/XYLD/JEPI/JEPQ，月度分红 7–12%，Roth IRA 最优，应税账户税务极差
- [[Covered-Call]] — 持股卖 Call，月收 1–3% premium，限制上行；Roth IRA 可执行
- [[Cash-Secured-Put]] — 锁定现金卖 Put，折扣买股或白赚 premium；Roth IRA 可执行
- [[Wheel-Strategy]] — CSP + CC 循环，年化 8–30%，30–45 DTE 最优；Roth IRA 可完整执行
- [[Risk-Reversal]] — 零成本合成多头（卖 Put + 买 Call），需 Margin，不可用于 IRA
- [[Collar]] — 持股 + 买 Put + 卖 Call，零成本锁定集中仓位下行风险
- [[Options-DTE选择]] — 30–45 DTE 是卖方策略黄金区，Theta 衰减最快

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/投资品种"
WHERE file.name != "00-MOC-投资品种"
SORT updated DESC
```
