---
title: Municipal-Bonds
category: 投资品种
tags: [市政债, Muni, 双免税, 加州, TEY, AMT, 固定收益]
source: "[[raw_material/投资品种-固定收益/Corporate-Muni-Bonds]]"
updated: 2026-04-16
status: draft
---

# Municipal Bonds（市政债）

## 定义

Municipal Bonds 是州/地方政府发行的债务，利息通常**免联邦税**；购买本州发行的还**免州税**（"Double Tax-Free"）。对加州高税率居民，市政债是应税账户中固收部分的首选。

**主要类型**：
- **General Obligation（GO）Bonds**：以征税权担保，AAA/AA 评级，违约率极低（历史 ~0.01%）
- **Revenue Bonds**：以特定项目收入担保，收益率略高，评级变化大

## 核心要点

### 加州"双免税"计算

加州居民买加州 Muni：联邦免税 + 加州税免税

**税后等价收益率（TEY）公式**：
```
TEY = Muni 收益率 / (1 - 边际税率)
```

**例**：加州 Muni 3.5%，边际税率 37%（联邦）+ 13.3%（加州）= ~50%
```
TEY = 3.5% / (1 - 0.50) = 7.0%
```
**3.5% 的 Muni = 应税 7.0% 的债券**——对高税率者极有价值。

### 何时选 Muni vs Taxable Bond

| 联邦+州边际税率 | 选择 |
|--------------|------|
| < 22% | Taxable 更优 |
| 22-32% | 看具体 TEY 对比 |
| **> 32%（加州高收入）** | **Muni 几乎一定更优** |

### AMT 陷阱

- **Non-AMT Muni**（"AMT-Free"）：政府 GO 债 → 安全
- **AMT Muni**（Private Activity Bonds）：利息需加回 AMT 计算

加州高收入者：选 **AMT-Free** 加州 Muni（如 PWZ、VCADX）

### 代表 ETF / 基金

| 代码 | 名称 | 费率 |
|------|------|------|
| **VCADX** | Vanguard CA Long-Term Tax-Exempt Admiral | **0.09%** |
| **CMF** | iShares California Muni Bond | 0.25% |
| **PWZ** | Invesco California AMT-Free Muni | 0.28% |

### 必须放 Taxable 账户

**Muni 的免税优势只在 Taxable 账户才有意义**：
- 放入 IRA/401K = 浪费免税优势（取出时仍按普通所得课税）
- **正确位置**：Taxable Brokerage

对比：Corporate Bonds 和 TIPS 放 Traditional IRA/401K；Roth IRA 不适合放债券。

## 与其他概念的关系

- [[Asset-Location]] — Muni 是极少数应放 Taxable 账户的债券
- [[AMT]] — Private Activity Bonds 触发 AMT Preference Item
- [[Bond-Ladder]] — 加州 Muni 可作为 Ladder 梯级（双免税 + 确定现金流）
- [[NIIT]] — Muni 利息免联邦税，也免 NIIT
- [[联邦所得税]] — 高税率档位下 TEY 优势显著扩大

## 参考来源

- [California Debt Financing Guide: Tax Treatment of Municipal Bonds](https://debtguide-api.treasurer.ca.gov/guide-pages/chapter-3-types-of-debt-obligations-issued-by-public-agencies/3-5-tax-treatment-of-municipal-bonds)
- [Kiplinger: Best Tax-Free Municipal Bond ETFs](https://www.kiplinger.com/investing/etfs/best-tax-free-municipal-bond-etfs)
- [Motley Fool: 7 Best Tax-Free Municipal Bonds 2026](https://www.fool.com/investing/how-to-invest/bonds/tax-free-municipal-bonds/)
