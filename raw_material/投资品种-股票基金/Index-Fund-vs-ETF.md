# Index Fund vs ETF vs Mutual Fund

**收集日期：** 2026-04-16

## 来源

- [Vanguard: ETFs vs. Mutual Funds - Which To Choose](https://investor.vanguard.com/investor-resources-education/etfs/etf-vs-mutual-fund)
- [Fidelity: ETF versus Mutual Fund Taxes](https://www.fidelity.com/learning-center/investment-products/etf/etfs-tax-efficiency)
- [Schwab: ETFs vs Mutual Funds What's the Difference](https://www.schwab.com/etfs/mutual-funds-vs-etfs)
- [Morningstar: Why ETFs Win the Tax Battle Over Mutual Funds](https://www.morningstar.com/funds/why-etfs-win-tax-battle-over-mutual-funds)
- [TurboTax: Tax Efficiency ETF vs Mutual Fund](https://turbotax.intuit.com/tax-tips/investments-and-taxes/tax-efficiency-etf-vs-mutual-fund/L1sYF0Ec3)
- [Alphaex Capital: Tax Efficiency ETF vs Mutual Fund 2026](https://www.alphaexcapital.com/etfs/etf-investing-basics/etf-vs-mutual-fund/tax-efficiency-etf-vs-mutual-fund)
- [Hey Gotrade: ETF vs Index Fund 4 Key Differences](https://www.heygotrade.com/en/blog/etf-vs-index-fund-which-is-better-for-long-term-investing)
- [Mintos: ETFs vs Index Funds Comprehensive 2026 Comparison](https://www.mintos.com/blog/etf-vs-index-funds/)

## 核心概念

**三种核心基金载体**，常被混淆：

1. **Mutual Fund**（共同基金）= 按日净值交易的传统基金
2. **Index Fund**（指数基金）= 追踪指数的基金（可以是 Mutual Fund 或 ETF）
3. **ETF**（交易所交易基金）= 像股票一样盘中交易的基金（可以是 Index ETF 或 Active ETF）

**不是互斥概念**：
- "Index Mutual Fund" = 指数 + 共同基金结构
- "Index ETF" = 指数 + ETF 结构
- "Active Mutual Fund" = 主动管理 + 共同基金结构
- "Active ETF" = 主动管理 + ETF 结构（新兴）

## 结构差异

| 维度 | Mutual Fund | ETF |
|------|-----------|-----|
| 交易时机 | 每日收盘后按 NAV | 盘中任何时间按市价 |
| 最低投资 | 通常 $1,000-$3,000 | 1 股（$50-$500+）|
| 买卖方式 | 通过基金公司 | 通过券商（像股票）|
| 手续费 | 免佣金（多数）| 0 美元佣金（大多券商）|
| 价格发现 | 每日 1 次 | 实时 |
| Bid/Ask Spread | 无 | 有（大型 ETF 很小）|
| 盘中期权 | 无 | 有（如 Covered Call 等）|

## 税务效率对比（核心区别）

### ETF 的"In-Kind"机制

ETF 有一个税务魔法：**Creation / Redemption Units**。

**原理**：
- 机构投资者（Authorized Participants）用**一篮子股票**直接兑换 ETF 份额（创造）或反之（赎回）
- 这是**"In-Kind"**交换，**不是"卖出"**
- IRS 视为非应税事件
- 基金可以"隐藏"高 basis 股票用于赎回 → 保留 low basis 股票 → 资本利得分配接近 0

### Mutual Fund 的限制

**必须用现金操作**：
- 有投资者赎回 → 基金卖股票 → 触发资本利得
- 这些利得**强制分配**给所有持有人（即使你没卖）
- 不管你是否需要这些税

### 实证数据

**2025 年**：约 **72% 美国股票共同基金**分配了资本利得，平均 **7-10% NAV**。

**相同基金，ETF 版本的资本利得分配通常近于 0**。

### 例子：$100,000 投资，同一指数

| | Mutual Fund | ETF |
|---|-----------|-----|
| 年度分红 | $2,000（合格）| $2,000 |
| 年度资本利得分配 | **$3,000（强制）**| $0 |
| 你未卖出时需交税 | $2,000 × 15% + $3,000 × 15% = **$750** | $2,000 × 15% = **$300** |
| 差距 | — | **$450/年 × 30 年 = $13,500+ 复利** |

## 费用对比

### 典型指数基金 vs ETF 费率

同一指数（S&P 500）对比：

| 产品 | 代码 | 费率 |
|------|------|------|
| **Vanguard 500 Index Admiral**（共同基金）| VFIAX | **0.04%** |
| **Vanguard S&P 500 ETF** | VOO | **0.03%** |
| **iShares Core S&P 500 ETF** | IVV | 0.03% |
| **SPDR S&P 500** | SPY | 0.09%（稍贵但最活跃）|
| **Fidelity 500 Index** | FXAIX | **0.015%** |

⚠️ **Vanguard 独特**：同一基金有 Admiral share（Mutual Fund）和 ETF 版本，费率几乎相同，内部持有同一资产池。

### Fidelity 的"Zero"系列

- **FZROX**（Total US Market）：**0.00%** 费率
- **FZILX**（International）：**0.00%**
- **FNILX**（Large Cap）：**0.00%**
- 仅 Fidelity 账户可买
- 税务效率不如 ETF，建议用于 IRA/401K

## 什么情况选 ETF

✅ **选 ETF**：
- 应税账户（Taxable）
- 想要盘中交易灵活性
- 账户余额不够 Admiral minimum
- 需要 option 策略（Covered Call 等）
- 跨越不同券商（ETF 通用）

## 什么情况选 Index Mutual Fund

✅ **选 Mutual Fund**：
- 401(k) 内（只有 Mutual Fund 选项）
- 想做自动定投（很多 Mutual Fund 有自动计划，ETF 不行）
- Fractional share 投资
- Fidelity Zero 系列（0% 费率）
- Vanguard Admiral 已持有

## 什么情况选 Active Mutual Fund

**大多数情况：不选**（见 [[主动vs被动投资]]）。

**例外**：
- 特定市场区段（小盘新兴市场、特殊债券策略）
- 明确信任某基金经理
- 费率 < 0.5% + 长期记录

## 加州税务特殊考量

### Vanguard Total US 和相关指数基金 vs 其他

- 加州对**资本利得分配**征全额普通所得税（加州不承认长期资本利得优惠）
- ETF 低分配 = 加州居民额外好处
- 税后差距可能**再翻倍**

### 市政债 Mutual Fund vs ETF

- California 免税市政债基金有 Mutual Fund 版本（较多）
- **VCTXX**（Vanguard California Long-Term Tax-Exempt）
- 无对应 ETF 版本（因为流动性需求）

## 实操推荐

### 典型美国投资者（$100k+ 应税账户）

**核心仓（80-90%）**：
- **VTI**（Total US Market ETF，0.03%）
- **VXUS**（Total International ETF，0.05%）
- **BND**（Total Bond ETF，0.03%）

**或等价 Admiral 版本**（Vanguard 账户内）：
- VTSAX / VTIAX / VBTLX

### 401(k) / IRA 内

- 选择平台提供的 Index Mutual Fund
- 寻找 "Institutional" 或 "Admiral" share class
- 避免 "A Share"（5% front load）

### HSA 投资

- Fidelity HSA：用 FZROX + FZILX（0% 费率）
- 其他 HSA：最低费率 Index Fund 或 ETF

## 经常被混淆的两个概念

### "Index Fund = 被动"
**错误**：Index 是**追踪目标**，可以是 Mutual Fund 或 ETF 结构。"Passive" 是管理方式。

### "ETF = 主动"
**错误**：大多数 ETF 是**指数 ETF**（被动）。少数是 Active ETF（如 ARK Innovation）。

## 与其他概念的关系

- [[ETF总览]]（已有 wiki）：更详细的 ETF 基础
- [[主动vs被动投资]]：哲学选择
- [[DCA定投]]：投资策略
- [[Asset-Location]]：什么账户放什么
- [[SGOV]]：短期债券 ETF 特例

## 待提炼为 wiki 条目

- [ ] `wiki/投资品种/Index-Fund-vs-ETF.md`
- [ ] `wiki/投资品种/ETF-税务效率.md`
- [ ] `wiki/投资品种/Vanguard-Admiral-Share.md`
- [ ] `wiki/投资品种/Fidelity-Zero系列.md`
