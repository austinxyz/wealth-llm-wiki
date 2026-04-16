---
title: FBAR
category: 中美对比
tags: [FBAR, FinCEN, 境外账户, 中国资产, 合规, 报告义务]
source: "[[raw_material/跨境税务/FBAR]]"
updated: 2026-04-16
status: draft
---

# FBAR（FinCEN Form 114）

## 定义

FBAR（Foreign Bank Account Report）正式名 **FinCEN Form 114**，由美国财政部 FinCEN 管辖（非 IRS）。要求符合条件的美国人报告持有的境外金融账户。

**触发条件**：
1. 身份为 US Person（公民、绿卡、税务居民）
2. 对境外金融账户有所有权（financial interest）或签字权（signature authority）
3. 境外账户**合计总额**在一年内任何时刻**超过 $10,000 USD**

关键：是"合计"且"任何时刻"——即使每个账户单独不超 $10k，但加起来超也要报。

## 核心要点

### $10,000 门槛计算

1. 每个账户分别查**年度最高余额**（非年终余额）
2. 按官方汇率转换为 USD
3. **加总所有账户**；若合计 > $10,000 → 报**所有账户**

**常见误区**：
- "每个账户没到 $10k 不用报" → 看合计
- "短暂超过又回落不算" → 任何时刻超过就算
- "签字权账户不算我的" → **签字权也要报**

### 2026 罚款金额

| 违规类型 | 罚款 |
|---------|------|
| **非故意（Non-Willful）** | 每次最高 **$16,536** |
| **故意（Willful）** | 较大者：$165,353 或 50% × 账户余额 |
| 故意+刑事 | 最高 $500,000 + 10 年监禁 |

**警示**：FBAR 罚款可超过账户余额，有案例 $200k 账户被罚 $800k（多年复合）。

### 申报要求

- **截止日期**：4 月 15 日（自动延期至 10 月 15 日）
- **独立申报**：不附于税表，通过 [BSA E-Filing](https://bsaefiling.fincen.gov) 电子提交，**免费**
- 需提供：每账户最高年度余额、银行名称、账户号、地址

### 中国账户重点

| 账户类型 | 是否要报 |
|---------|---------|
| 工商/建设/招商银行等 | ✅ 要报 |
| A 股券商账户 | ✅ 要报 |
| 余额宝/支付宝（> $10k） | ✅ 要报 |
| 保险（带现金价值） | ✅ 报现金价值 |
| 父母账户（你有签字权） | ✅ 要报 |
| 境外房产 | ❌ 不报（仅管金融账户） |

### FBAR vs Form 8938 区别

| 维度 | FBAR（FinCEN 114） | Form 8938（FATCA） |
|------|------------------|--------------------|
| 管辖 | FinCEN | IRS |
| 门槛 | $10,000 合计 | $50k+（在美居民） |
| 范围 | 仅金融账户 | 金融账户+其他外国资产 |
| 罚款 | 严苛 | 较轻 |

**大多数情况两个都要报。**

### 以前没报的补救程序

- **Delinquent FBAR Submission**：无未申报收入时，补报附解释，通常不罚款
- **Streamlined Filing**：有未申报境外收入时，补 3 年税表 + 6 年 FBAR，非故意违规豁免重罚
- **关键**：在 IRS 联系你之前主动补报

## 与其他概念的关系

- [[PFIC]] — 中国基金账户通常也要报 FBAR，叠加 PFIC 税务
- [[双边资产策略]] — 中国资产合规的核心义务
- [[Exit-Tax]] — 放弃绿卡/公民前须确保 5 年 FBAR 完全合规（测试 3）
- [[AMT]] — 高收入者境外账户收入影响整体税务规划

## 参考来源

- [IRS: Report of Foreign Bank and Financial Accounts (FBAR)](https://www.irs.gov/businesses/small-businesses-self-employed/report-of-foreign-bank-and-financial-accounts-fbar)
- [FinCEN: Report Foreign Bank and Financial Accounts](https://www.fincen.gov/report-foreign-bank-and-financial-accounts)
- [IRS: Comparison of Form 8938 and FBAR requirements](https://www.irs.gov/businesses/comparison-of-form-8938-and-fbar-requirements)
