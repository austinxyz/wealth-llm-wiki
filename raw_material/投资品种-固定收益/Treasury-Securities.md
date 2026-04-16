# 美国国债全家族（Treasury Securities）

**收集日期：** 2026-04-16

## 来源

- [TreasuryDirect: Understanding Pricing and Interest Rates](https://treasurydirect.gov/marketable-securities/understanding-pricing/)（官方）
- [TreasuryDirect: I Bonds](https://www.treasurydirect.gov/savings-bonds/i-bonds/)（官方）
- [U.S. Treasury: Daily Treasury Rates 2026](https://home.treasury.gov/resource-center/data-chart-center/interest-rates/TextView?type=daily_treasury_yield_curve&field_tdr_date_value=2026)（官方）
- [U.S. Treasury: Interest Rate Statistics](https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics)（官方）
- [Federal Reserve: H.15 Selected Interest Rates](https://www.federalreserve.gov/releases/h15/)（官方）
- [FRED: 10-Year Treasury Yield](https://fred.stlouisfed.org/series/DGS10)
- [Schwab: 2026 Fixed Income Outlook](https://www.schwab.com/learn/story/fixed-income-outlook)
- [ETF Database: Treasury Yields Snapshot April 2026](https://etfdb.com/fixed-income-content-hub/april-2-2026-treasury-yields-snapshot/)

## 概览

**美国国债（Treasuries）= 美国政府发行的债务证券**，被视为全球**最安全**的资产（"risk-free rate"基准）。

## 全家族对比（2026 年 4 月数据）

| 品种 | 期限 | 2026 年化收益 | 特点 | 典型 ETF |
|------|------|-------------|------|---------|
| **T-Bills**（国库券） | 4 周 – 1 年 | 4.2-4.8% | 零息（折价发行）/ 极高流动性 | **SGOV**、BIL、SHV |
| **T-Notes**（国库票据） | 2 – 10 年 | 3.8-4.3% | 半年付息 / 中期投资 | IEF、VGIT |
| **T-Bonds**（长期国债） | 20 – 30 年 | 4.5-4.9% | 半年付息 / 利率敏感度最高 | TLT、VGLT、EDV |
| **TIPS**（通胀保护） | 5/10/30 年 | 实际 1.2-2.0% + CPI | 本金随 CPI 调整 / 抗通胀 | TIP、VTIP、SCHP |
| **I Bonds**（储蓄债券） | 变利率 | 固定 + 通胀（重置每 6 个月）| $10k/年上限 / 1 年锁定 | 无 ETF（仅 TreasuryDirect 购买）|
| **FRNs**（浮动利率票据） | 2 年 | 随短期利率浮动 | 利率风险极低 | USFR、TFLO |

## T-Bills（短期国库券）⭐ 现金管理首选

### 核心特征
- **零息**：以折价购买，到期按面值兑付
- 极低信用风险
- **州税豁免**：利息免加州税（对加州居民关键）
- 流动性极高
- **SGOV** = iShares 0-3 个月 T-Bill ETF，日常交易简便

### 税后优势（加州居民）

| 工具 | 税前收益 | 联邦税（24%） | 加州税 | 税后收益 |
|------|---------|------------|-------|---------|
| T-Bills / SGOV | 4.8% | -1.15% | **$0** | **~3.65%** |
| HYSA（4.0%） | 4.0% | -0.96% | -0.37% | **~2.67%** |

**差距**：~1%/年 → $100k 差 $1,000。

### 谁应该用

- 紧急基金 Tier 2-3（见 [[紧急基金]]）
- 停放待投资资金
- [[Bucket-Strategy]] Bucket 1
- 退休后现金缓冲

## T-Notes 和 T-Bonds（中长期）

### T-Notes（2-10 年）
- 固定利率 / 半年付息
- 利率风险中等
- **Duration 约 2-8**（见 [[Duration-与利率风险]]）

### T-Bonds（20-30 年）
- 固定利率 / 半年付息
- **利率风险极高**（30 年债 duration ~20）
- 利率上升 1% → 价格跌约 **20%**
- 但在经济衰退/避险时通常大涨

### 2026 收益率曲线

```
期限:   1M    3M    6M    1Y    2Y    5Y    10Y   20Y   30Y
收益率: 4.6%  4.5%  4.3%  4.1%  3.8%  3.9%  4.3%  4.7%  4.9%
```

**当前曲线形状**：短端略高于中端（2Y-5Y），长端较高 → **部分倒挂已缓解**。

## TIPS（通胀保护国债）

### 机制

```
TIPS 每期利息 = 固定票面利率 × 调整后本金
调整后本金 = 原始本金 × (当前 CPI / 发行时 CPI)
```

### 何时用
- 预期通胀 > 市场隐含通胀（Breakeven Inflation Rate）
- 退休后的"实际购买力"保护
- 如 10 年 TIPS 实际利率 2.0% + CPI 3% = **名义约 5%**

### ETF 选择
- **TIP**（iShares，最大）：综合 TIPS，duration 约 7
- **VTIP**（Vanguard Short-Term）：duration 约 2.5，利率敏感度低
- **SCHP**（Schwab）：综合，费率低

### 税务陷阱 ⚠️

**TIPS 的"Phantom Income"问题**：
- 本金随 CPI 上调部分**当年应税**（即使你没拿到现金）
- 在应税账户中每年产生"虚拟收入"
- **建议**：TIPS 放 **IRA/401K**（税延账户），不放 Taxable

## I Bonds（Series I 储蓄债券）

### 利率结构
```
I Bond 利率 = 固定利率 + 通胀利率（每 6 个月重置）
```

### 2026 参数
- 固定利率：**1.2%**（购买时锁定终身）
- 通胀利率：变动（基于 CPI-U）
- 合计约 **4-5%**

### 限制
- **每人每年 $10,000**（电子版，TreasuryDirect）
- 额外 $5,000/年纸质版（通过退税 Form 8888）
- **1 年锁定**（不能提前赎回）
- 1-5 年赎回：**罚最后 3 个月利息**
- 5 年后赎回：无罚款

### 税务优势
- 联邦应税，但 **州税豁免**
- 可选择**每年报税**或**赎回时报税**（defer）
- 用于教育（529 替代？）：满足条件免联邦税

### 谁应该用
- 保值型储蓄
- 紧急基金的 **Tier 3 层**（1 年后可用）
- 通胀对冲（长期 >5 年）
- 每年 $10k 上限 → 作为补充，不是主力

## FRNs（浮动利率票据）

### 概念
- 2 年期国债
- 利率随短期利率浮动
- **Duration 接近 0**（利率风险极低）
- ETF：**USFR**（WisdomTree）、**TFLO**（iShares）

### 何时用
- 预期利率上升
- 不想承受利率风险
- 短期停放资金

## 国债在整体组合中的角色

### [[Asset-Location]] 建议

| 品种 | 最佳位置 | 原因 |
|------|---------|------|
| T-Bills / SGOV | **Taxable** | 州税豁免 → Taxable 最优 |
| T-Notes / T-Bonds | **Traditional IRA/401K** | 利息按普通税率 → 税延更好 |
| TIPS | **Traditional IRA/401K** | Phantom Income → 必须税延 |
| I Bonds | **TreasuryDirect**（无账户选择） | 自动 defer 税 |

### [[Bucket-Strategy]] 匹配

| Bucket | 国债品种 |
|--------|---------|
| Bucket 1（0-2 年）| T-Bills / SGOV / FRNs |
| Bucket 2（3-10 年）| T-Notes / Bond Ladder |
| Bucket 3（10+ 年）| 不适合国债（用股票） |

## 与其他概念的关系

- [[SGOV]]（已有 wiki）：T-Bills ETF 的代表
- [[紧急基金]]：T-Bills 作为加州最优停放工具
- [[Bond-Ladder]]：国债是最安全的 Ladder 材料
- [[Duration-与利率风险]]：长期国债风险高
- [[Bucket-Strategy]]：不同期限匹配不同桶
- [[Asset-Location]]：TIPS 必须在税延账户

## 待提炼为 wiki 条目

- [ ] `wiki/投资品种/Treasury全家族.md`
- [ ] `wiki/投资品种/TIPS.md`
- [ ] `wiki/投资品种/I-Bonds.md`
- [ ] `wiki/投资品种/FRN浮动利率国债.md`
