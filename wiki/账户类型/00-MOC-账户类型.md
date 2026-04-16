---
title: 账户类型总览
category: MOC
tags: [账户类型, MOC]
updated: 2026-04-16
status: stable
---

# 账户类型

## 条目列表

- [[Roth-IRA]] — 税后供款，增值和提取完全免税
- [[Traditional-IRA]] — 税前供款，扣除有 MAGI phase-out，73 岁 RMD
- [[401K]] — 税前供款，雇主匹配，退休后缴税
- [[Solo-401K]] — 自雇退休计划，员工+雇主双供款，2026 上限 $72,000
- [[HSA]] — 三重税优健康储蓄账户，65 岁后等同 Traditional IRA
- [[529-Plan]] — 教育储蓄，免税增值，未使用余额可转 Roth（$35k 终身）
- [[Betterment]] — 机器人投顾，自动再平衡
- [[SGOV]] — 短期国债ETF，州税豁免

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/账户类型"
WHERE file.name != "00-MOC-账户类型"
WHERE status != "outdated"
SORT updated DESC
```
