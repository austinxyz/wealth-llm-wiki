---
title: REITs
category: 投资品种
tags: [REITs, 房产, 股息, 税务优化, QBI, 资产配置]
source: "[[raw_material/投资品种-另类/REITs]]"
updated: 2026-04-16
status: draft
---

# REITs（Real Estate Investment Trusts）

## 定义

REIT（房产投资信托）是一种持有并经营房产的公司，须将 **≥90% 应税收入** 分配给股东，以此免除公司层面税务。等同于"股票化的房产"——用 ETF 价格买到商业地产、公寓、数据中心、医院等的收益权。

**主要类型**：
- **Equity REITs**（~95%）：持有并运营实体房产（住宅、工业/物流、数据中心、医疗、基站）
- **Mortgage REITs（mREITs）**：持有房贷或 MBS，利率极度敏感、波动大

## 核心要点

### 分红税务分类（非合格分红）

REIT 分红**不是"合格分红"**，大部分按普通所得课税：

| 分红组成 | 税率 | 说明 |
|---------|------|------|
| Ordinary Income（主要） | 最高 37% + NIIT 3.8% | 租金收入分配 |
| Qualified REIT Dividend | 有效最高 ~29.6% | Section 199A 20% 扣除 |
| Capital Gains | 长期 0/15/20% | 出售房产利得 |
| Return of Capital（ROC） | 0%（当期） | 降低 cost basis，税务递延非免税 |

### Section 199A QBI 扣除

REIT 普通分红可享受 20% QBI 扣除（见 [[QBI-Deduction]]），有效最高税率：
```
37% × (1 - 20%) = 29.6%
```
该优惠已由 OBBBA 永久化。

### 必须放税优账户

| 账户 | 税后分红率（假设 4% 分红） |
|------|--------------------------|
| Roth IRA | **4.0%**（全免税） |
| Traditional IRA | **4.0%**（税延） |
| Taxable（37%+13.3% CA+NIIT） | **~2.2%** |

**结论**：REIT 分红在应税账户损失巨大，**应优先放入 Roth IRA 或 Traditional IRA**。

### 代表 ETF

| 代码 | 名称 | 费率 |
|------|------|------|
| **VNQ** | Vanguard Real Estate ETF | 0.12% |
| **SCHH** | Schwab US REIT ETF | 0.07% |
| **XLRE** | Real Estate Select Sector SPDR | 0.09% |

### 组合角色

**优势**：高现金流（4-6% 年化）、通胀对冲、与股票相关性中等、可进入商业地产市场  
**劣势**：利率敏感（2022 年 VNQ 跌 26%）、税务低效、已在 VTI 中含 ~3% 敞口

**推荐配比**：0-10%，超配时选 5-10% 放税优账户

## 与其他概念的关系

- [[Asset-Location]] — REIT 是最典型的"必须放税优账户"资产
- [[QBI-Deduction]] — REIT 普通分红享受 20% 扣除
- [[NIIT]] — REIT 分红在应税账户叠加 3.8% NIIT
- [[AMT]] — 高收入者持有 REIT 需注意整体税负
- [[Bond-Ladder]] — 同样利率敏感，高利率环境需对比

## 参考来源

- [IRS: Instructions for Form 1120-REIT](https://www.irs.gov/instructions/i1120rei)
- [reit.com: REIT Dividends & Taxes](https://www.reit.com/investing/investing-reits/taxes-reit-investment)
- [TurboTax: Tax Tips for REITs](https://turbotax.intuit.com/tax-tips/investments-and-taxes/tax-tips-for-real-estate-investment-trusts/L0tW3ad6C)
