# 期权收益 ETF（Options Income ETF）

**收集日期：** 2026-05-18

## 来源

- Global X ETFs: QYLD/XYLD/RYLD 产品说明（globalxetfs.com）
- JPMorgan: JEPI/JEPQ 产品说明（jpmorgan.com）
- Investopedia: Covered Call ETF, ELN 说明
- ETF.com: 期权收益 ETF 横向比较

---

## 核心概念

**期权收益 ETF** = 持有股票/指数 + 在基金层面系统卖出 Call 期权，将收到的 premium 以**月度分红**形式分发给持有人。

投资者**不需要自己操作期权**，买入 ETF 即自动获得期权策略的收益流。

---

## 主要产品

### QYLD — Global X NASDAQ 100 Covered Call ETF

| 项目 | 详情 |
|------|------|
| 机制 | 持有 QQQ（纳斯达克100）+ **卖出 ATM（平价）NDX Call** |
| 年化分红率 | ~10–12%（月度发放）|
| 费率 | 0.60% |
| 核心特点 | 卖 ATM Call → premium 最大化，但**完全放弃上行空间** |
| 缺点 | 牛市严重跑输 QQQ；NAV 长期侵蚀 |

### XYLD — Global X S&P 500 Covered Call ETF

| 项目 | 详情 |
|------|------|
| 机制 | 持有 SPY（标普500）+ **卖出 ATM SPX Call** |
| 年化分红率 | ~8–10%（月度）|
| 费率 | 0.60% |
| 核心特点 | 与 QYLD 相同机制，底层为标普500，波动更低 |

### RYLD — Global X Russell 2000 Covered Call ETF

| 项目 | 详情 |
|------|------|
| 机制 | 持有 IWM（罗素2000小盘）+ 卖出 ATM Call |
| 年化分红率 | ~12–14%（月度）|
| 费率 | 0.60% |
| 核心特点 | 小盘波动率高 → premium 最高，但底层指数更不稳定 |

### JEPI — JPMorgan Equity Premium Income ETF ⭐

| 项目 | 详情 |
|------|------|
| 机制 | 持有**低波动大盘价值股** + 卖出 **OTM（虚值）SPX Call（通过 ELN 结构）** |
| 年化分红率 | ~7–9%（月度）|
| 费率 | 0.35% |
| 关键差异 | 卖 OTM Call → 仍保留**部分上行空间**；比 QYLD 更保守 |
| 底层股票 | 主动管理，约100只低 beta 股 |
| 适合 | 注重总回报 + 收入并重者 |

### JEPQ — JPMorgan Nasdaq Equity Premium Income ETF ⭐

| 项目 | 详情 |
|------|------|
| 机制 | 持有**纳斯达克成长股**（含 AAPL/MSFT/NVDA）+ 卖出 OTM Nasdaq Call（ELN）|
| 年化分红率 | ~9–11%（月度）|
| 费率 | 0.35% |
| 关键差异 | 纳斯达克成长股 + OTM Call → 比 QYLD **更多上行参与**，收益更高 |
| 适合 | 想要科技股敞口 + 月度收入者 |

---

## 机制对比：ATM vs OTM Call

| | QYLD / XYLD / RYLD | JEPI / JEPQ |
|---|---|---|
| Call 类型 | ATM（平价，即期 Strike ≈ 当前价）| OTM（虚值，Strike > 当前价）|
| Premium 收入 | 最大化 | 中等 |
| 上行参与 | **完全放弃**（股价一涨就被 Call Away）| **部分保留**（到 Strike 之前的涨幅仍享受）|
| 牛市表现 | 严重跑输指数 | 小幅跑输指数 |
| 熊市/横盘 | 靠 premium 缓冲 | 靠 premium 缓冲 |
| 底层持仓 | 指数（被动）| 主动选股（JEPI/JEPQ）|

---

## ELN（股权挂钩票据）结构说明

JEPI/JEPQ 不直接持有 Call 期权，而是通过 **Equity Linked Notes（ELN）**：
- ELN 是由银行发行的结构性产品，回报与某指数的 Call 期权挂钩
- 优点：更高的税务灵活性（部分分红可能是 Return of Capital）
- 实质：等同于持有 OTM Covered Call 组合

---

## 税务处理（关键）

| 分红类型 | 税务性质 | 税率（高收入） |
|---------|---------|-------------|
| 普通分红（Ordinary Dividend）| 普通所得税率 | ~37%（联邦）+ CA 13.3% |
| Return of Capital（ROC）| 暂不交税，但降低 cost basis | — |
| 长期资本利得分红 | 15% 联邦 | 较优 |
| **QYLD/XYLD/RYLD 主要类型** | **普通所得（premium收入）** | **⚠️ 税务最不利** |
| **JEPI/JEPQ 分红类型** | **混合（含较多 ROC + 部分普通）** | 相对较优 |

> ⚠️ **应税账户持有期权收益 ETF 税务极差**：10% 分红率 × 46% 边际税率 = 税后约 5.4%，而 QQQ 分红约 0.6%（大部分资本增值递延）。
>
> ✅ **Roth IRA 持有最优**：月度分红免税再投入，复利效果全额保留。

---

## 总回报 vs 单纯收益

**常见误解**：高分红率 ≠ 高总回报。

| 指标 | QYLD（2020-2025 实际）| QQQ 同期 |
|------|---------------------|---------|
| 月度分红率 | ~10-12% | ~0.5% |
| NAV 变化 | 持续下跌（~-30%）| 大幅上涨 |
| **总回报（含分红）** | **约 +20–40%** | **约 +100%+** |

**原因**：卖出 Call 限制了 NAV 上涨，牛市中 NAV 侵蚀严重。熊市/横盘时 QYLD 表现相对更好。

---

## 适用场景

| 场景 | 推荐产品 | 说明 |
|------|---------|------|
| Roth IRA 月度收入策略 | JEPI / JEPQ | 免税 + 部分上行参与 |
| 退休后需要现金流 | XYLD / JEPI | 稳定月度分红 |
| 横盘/熊市防御仓位 | QYLD | 高 premium 缓冲 |
| 应税账户收入 | ❌ 不推荐 | 税务极差 |
| 长期财富增值（牛市）| ❌ 不推荐 | 跑输基准指数 |

---

## 与 DIY 期权策略对比

| 方式 | 灵活性 | 复杂度 | 税务 | 适合 |
|------|--------|--------|------|------|
| 期权收益 ETF（QYLD/JEPI）| 低（固定策略）| 极低（买入持有）| Roth IRA 最优 | 被动收入投资者 |
| DIY Covered Call（自己卖）| 高（自选 Strike/DTE）| 中（需要管理）| 同等差（短期利得）| 主动操作者 |
| DIY Wheel 策略 | 最高 | 高 | 同等差 | 全职主动管理 |

**核心区别**：ETF 帮你做期权操作，你承担基金费率（0.35-0.60%）换取便捷性。自己做期权可以优化 Strike 和 DTE，但需要主动管理。

---

## 与其他概念的关系

- [[Options-策略]]：QYLD/JEPI 的底层即 Covered Call 机制
- [[杠杆ETF]]：同为"特殊 ETF"，但风险来源完全不同（期权 vs 杠杆）
- [[Asset-Location]]：期权收益 ETF 在 Roth IRA 最优
- [[Roth-IRA]]：月度分红免税再投入，最大化复利
