---
title: 税务策略总览
category: MOC
tags: [税务策略, MOC]
updated: 2026-04-20
status: stable
---

# 税务策略

## 条目列表

- [[税损收割]] — 卖出亏损资产锁定税务损失，抵消资本利得
- [[Wash-Sale-Rule]] — 30天内不得买回同种资产，否则损失不可抵税
- [[联邦所得税]] — 7 档边际税率 10%-37%，2026 标准扣除 MFJ $32,200
- [[加州所得税]] — 9 档 1%-12.3% + 1% MHT，全美最高，资本利得无优惠
- [[资本利得税]] — 长期 0/15/20% 优惠，短期按普通税率，损失每年抵 $3,000
- [[合格分红]] — 满足 60/121 天持股期的分红享长期资本利得税率
- [[NIIT]] — 高收入者投资收入附加 3.8%，MAGI 门槛不随通胀调整
- [[AMT]] — 平行税制 26%/28%，ISO 行权和高 SALT 是主要触发源
- [[Backdoor-Roth-IRA]] — 高收入者绕过 Roth 收入限制，注意 Pro-Rata Rule 陷阱
- [[Mega-Backdoor-Roth]] — 401K after-tax 供款转 Roth，最多额外 $47,500/年
- [[Asset-Location]] — 债券→税前账户 / 高增长→Roth 的税务最优资产配置
- [[Roth-Conversion-Ladder]] — 早退休者每年转换 Traditional→Roth，5年后免税提取
- [[QBI-Deduction]] — Section 199A，自雇/pass-through 20% 扣除，2026 永久化
- [[DAF]] — 捐赠人建议基金，Bunching 策略 + 增值证券捐赠免资本利得税
- [[税务调整后净资产]] — Traditional ×(1-税率)/Roth ×1/Taxable ×(1-LTCG)；退休前规划必算

## Dataview 查询

```dataview
TABLE updated, status, tags
FROM "wiki/税务策略"
WHERE file.name != "00-MOC-税务策略"
SORT updated DESC
```
