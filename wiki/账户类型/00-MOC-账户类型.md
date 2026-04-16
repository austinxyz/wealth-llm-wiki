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
- [[401K]] — 税前供款，雇主匹配，退休后缴税
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
