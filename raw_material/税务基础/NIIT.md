# NIIT：净投资收入附加税（Net Investment Income Tax）

**收集日期：** 2026-04-16

## 来源

- [IRS Topic 559 Net Investment Income Tax](https://www.irs.gov/taxtopics/tc559)（官方）
- [IRS Form 8960 Instructions](https://www.irs.gov/instructions/i8960)
- [IRS Form 8960 PDF](https://www.irs.gov/pub/irs-pdf/f8960.pdf)
- [TurboTax: What is Form 8960](https://turbotax.intuit.com/tax-tips/investments-and-taxes/what-is-form-8960-net-investment-income-tax/L15hpJmi9)

## 核心概念

**NIIT 是在普通税和资本利得税之上的 3.8% 附加税**，专门针对高收入者的投资收入。设立于2013年（奥巴马医改 ACA 资助机制的一部分）。

## 适用条件

同时满足以下 **两个条件** 才缴 NIIT：

1. **MAGI** > 门槛（见下）
2. **有 Net Investment Income（NII）**

税基 = min(NII, MAGI 超出门槛部分) × 3.8%

## MAGI 门槛（2026）

⚠️ **这些门槛不随通胀调整**，自 2013 年固定至今。

| 申报状态 | MAGI 门槛 |
|---------|----------|
| Single / Head of Household | **$200,000** |
| Married Filing Jointly / Qualifying Surviving Spouse | **$250,000** |
| Married Filing Separately | **$125,000** |
| Estates and Trusts | $15,650（2025） |

## 什么算"净投资收入"（NII）

✅ **包含**：
- 利息（Interest）
- 分红（Dividends）
- 资本利得（Capital Gains）
- 租金（Rental income）
- 特许权使用费（Royalties）
- 某些年金（Annuities）
- 被动交易/投资的收益
- 卖出合伙企业或 S-Corp 被动权益的收益

❌ **不包含**：
- 工资、自雇收入（W-2、Schedule C）
- 失业金（Unemployment）
- 社保、养老金（Social Security、401K 提取）
- 主动经营收入（Active Trade or Business）
- 免税债券利息（Municipal bond interest）
- IRA/Roth IRA 提取（账户内增值时已被 NII，但提取不再重复计）

## 申报方式

- **表单**：Form 8960, Net Investment Income Tax—Individuals
- **附在**：Form 1040（个人）/ Form 1041（信托遗产）
- **计算**：Form 8960 Line 17 = NIIT 金额

## 示例计算

**场景**：单身，MAGI = $250,000，NII（含长期资本利得 + 分红）= $30,000

- MAGI 超 Single 门槛：$250,000 - $200,000 = $50,000
- NII：$30,000
- 税基 = min($50,000, $30,000) = $30,000
- **NIIT = $30,000 × 3.8% = $1,140**

## 常见叠加情景

对高收入长期投资者：

| 收入类型 | 联邦 | 加州 | NIIT | 总税率 |
|---------|------|------|------|-------|
| 长期资本利得（15% 档） | 15% | 9.3-13.3% | +3.8% | **~28-32%** |
| 长期资本利得（20% 档） | 20% | 13.3% | +3.8% | **~37%** |
| 合格分红（15% 档） | 15% | 9.3-13.3% | +3.8% | **~28-32%** |

## 避免 NIIT 的策略

- 把投资资产放 **退休账户**（IRA/401K/Roth IRA）——账户内收入不计入 NII
- **免税市政债券**（Muni Bonds）——利息不计入 NII
- 做 **主动经营活动**——对于特定参与的业务，可能不算 NII（"Material Participation"规则复杂）
- 资本损失抵消（降低 NII 分子）
- 降低 MAGI（如最大化 401K、HSA 供款）

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/NIIT.md`
- [ ] `wiki/税务策略/NIIT规避策略.md`
