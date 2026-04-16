---
title: 财富规划知识库总览
category: MOC
tags: [总览, MOC]
updated: 2026-04-16
status: stable
---

# 财富规划知识库

> 本知识库基于 Karpathy LLM Wiki 理念构建，分三层：raw_material（原始资料）→ wiki（提炼知识）→ output（个人策略）

## 知识分区

- [[账户类型/00-MOC-账户类型|账户类型]] — Roth IRA、401K、Betterment、SGOV 等
- [[税务策略/00-MOC-税务策略|税务策略]] — 税损收割、Wash Sale Rule 等
- [[投资品种/00-MOC-投资品种|投资品种]] — ETF、杠杆ETF、IUL 等
- [[退休规划/00-MOC-退休规划|退休规划]] — 三段式框架、年金 等
- [[中美对比/00-MOC-中美对比|中美对比]] — 双边资产策略 等

## 全库 Dataview 索引

```dataview
TABLE category, updated, status
FROM "wiki"
WHERE file.name != "00-MOC-总览"
SORT category ASC, updated DESC
```
