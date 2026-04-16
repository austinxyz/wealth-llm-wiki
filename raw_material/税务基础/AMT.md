# AMT：替代性最低税（Alternative Minimum Tax）

**收集日期：** 2026-04-16

## 来源

- [IRS Topic 556 Alternative Minimum Tax](https://www.irs.gov/taxtopics/tc556)（官方）
- [SmartAsset: AMT Rules and Exclusions for 2026](https://smartasset.com/taxes/amt-tax-brackets)
- [Wealthspire: The Return of AMT in 2026](https://www.wealthspire.com/blog/the-return-of-alternative-minimum-tax-amt-what-high-earners-need-to-understand-about-2026/)
- [Carta: Alternative Minimum Tax Explained](https://carta.com/learn/equity/stock-options/taxes/amt/)
- [Tax Policy Center: What is the AMT?](https://taxpolicycenter.org/briefing-book/what-amt)

## 核心概念

**AMT 是平行的税务系统**——先按常规方法算一遍税（Regular Tax），再按 AMT 方法算一遍，**取较大值** 缴税。目的是防止高收入者通过扣除和优惠完全避税。

## 计算四步法

1. **计算 AMTI**（Alternative Minimum Taxable Income）
   - 从常规应税收入开始
   - 加回 "Preference Items" 和 "Adjustments"（见下）
2. **减去 AMT 豁免额**（见下）
3. **按 AMT 税率征税**
4. **减去 AMT 外国税收抵免**
5. **与常规税比较**，取较大值

## AMT 税率

**两档固定税率**：

| 税率 | 应税 AMT 收入 |
|------|-------------|
| 26% | 前 $244,500（Single/MFJ），前 $122,250（MFS） |
| 28% | 超过上述金额部分 |

## 2026 豁免额

| 申报状态 | 豁免额 | 豁免开始递减（Phase-out Start） | 豁免完全消失（Phase-out End） |
|---------|-------|------------------------------|-----------------------------|
| Single | $90,100 | $500,000 | $680,200 |
| MFJ / Surviving Spouse | $140,200 | $1,000,000 | $1,280,400 |

⚠️ **2026 变化**：豁免递减速率从每 $4 超额收入减 $1 豁免，**加倍** 到每 $2 减 $1（50% rate）。这意味着豁免消失得更快，更多人会被 AMT 抓到。

## 常见触发项（Preference Items / Adjustments）

### 高风险项
- **ISO 期权行权**（Incentive Stock Option exercise）——行权日的 bargain element（市价 − 行权价）算 AMTI
  - 持有到长期卖出可享资本利得税，但行权当年可能被 AMT 击中
- **州/地方税扣除（SALT）** —— AMT 不允许扣除（原本常规税允许，2026 已不受 $10k SALT 上限约束）
- **股票高集中度**（单一股票大比例仓位卖出）
- **私营业务权益处置**

### 中等风险项
- **Section 1202 QSBS 排除** 的一部分
- **某些房产折旧**（accelerated depreciation）
- **私人活动债券**（Private Activity Municipal Bonds）利息
- **标准扣除额**（对于常规税采用标准扣除的纳税人）

## AMT 高风险人群

- **科技/初创公司员工**（行权 ISO）
- **加州等高州税居民**（SALT 扣除被 AMT 加回）
- **集中持有单股后大量卖出** 的人
- **AMTI 在 $500k-$1M / $1M-$1.3M 区间**（豁免已开始递减但尚未消失）

## 关键策略启示

- **ISO 行权前算 AMT**：可以分批行权、或"持股行权然后同年卖出（Same-Day Sale）"避免 AMT（但失去长期资本利得优惠）
- **AMT Credit Carryforward**：ISO 引起的 AMT 实际上是 "预付税"，未来年度超过常规税的部分可以抵回（复杂）
- **Roth IRA 操作不触发 AMT**（没有税务事件）
- 做 **年度 AMT 预算**：用 TurboTax 或 tax pro 跑两遍，确认不会被抓

## 相关表单

- **Form 6251**：Alternative Minimum Tax – Individuals
- **Form 8801**：Credit for Prior Year Minimum Tax（AMT Credit 抵扣）

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/AMT.md`
- [ ] `wiki/税务策略/ISO期权与AMT.md`
- [ ] `wiki/税务策略/AMT-Credit-Carryforward.md`
