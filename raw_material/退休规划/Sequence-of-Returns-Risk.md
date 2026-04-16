# Sequence of Returns Risk（收益顺序风险）

**收集日期：** 2026-04-16

## 来源

- [Charles Schwab: What Is Sequence-of-Returns Risk?](https://www.schwab.com/learn/story/timing-matters-understanding-sequence-returns-risk)
- [Kiplinger: The 'Sequence of Returns' Risk Could Shrink Your Retirement Nest Egg](https://www.kiplinger.com/retirement/retirement-planning/this-stock-market-risk-could-shrink-your-retirement-nest-egg)
- [CNBC: Market volatility and retirement sequence of returns risk](https://www.cnbc.com/2026/04/02/market-volatility-retirement-sequence-of-returns-risk.html)
- [Retirement Researcher: Why Sequence of Return Risk Matters](https://retirementresearcher.com/why-sequence-of-return-risk-matters-for-your-retirement-income/)
- [American Century: Sequence of Returns Risk - Why Timing Matters](https://www.americancentury.com/insights/sequence-risk/)
- [Bullseye Retirement: Why Early Losses Can Destroy Your Retirement](https://www.bullseyeretirement.com/articles/sequence-of-returns-risk)

## 核心概念

**即使平均年化回报相同，投资组合在退休期的"命运"完全不同**——取决于回报出现的**顺序**。

- **积累期**（工作中存钱）：顺序无所谓，只看平均回报和时间
- **提取期**（退休中花钱）：**开局几年的回报决定一切**

## 为什么顺序在提取期致命

当组合在提取期亏损时：

1. 要提取固定金额 → 需要**卖出更多股份**
2. 卖出更多 → 剩余本金更少
3. 本金少 → 即使市场回升也**反弹乏力**
4. 复利"反向工作"——本金永远追不回来

## 经典对比案例

两个退休者，每年提取 $50k，30 年期，平均年化回报相同（7%）：

| 年份 | A 退休者（先好后坏） | B 退休者（先坏后好） |
|------|-------------------|-------------------|
| 1 | +25% | -25% |
| 2 | +15% | +5% |
| 3 | +5% | +15% |
| ... | 震荡平均7% | 震荡平均7% |
| 28 | -25% | +25% |
| **30 年结果** | **组合剩 $800k+** | **第 19 年耗尽** |

**相同平均回报，完全不同结局**。

## "红色警戒区"（Retirement Red Zone）

**退休前后各 5 年 = 最危险的 10 年**：

- 组合规模最大
- 刚开始提取
- 市场大跌影响最严重

> 退休第一年若组合跌 15% + 提取 3.3%，30 年耗尽概率 **提高 6 倍**。

## 量化模型

**"Safety Margin" 递减**：
- 前 5 年平均回报每低 1%，安全提取率降低约 0.25-0.5%
- 前 10 年是"命运决定期"（Morningstar 研究）

## 历史数据：最差 vs 最好

回测 1926-2020 美国市场，30 年期：
- **最糟起点**：1965-1966（60%股40%债），SAFEMAX 仅 **4.15%**
- **最佳起点**：1981-1982，SAFEMAX 高达 **10%+**

相同平均回报，SAFEMAX 可差 **2.5 倍**。

## 缓解策略

### 策略 1：现金缓冲（Cash Buffer）

- 保留 **1-3 年生活费** 现金 / 短期国债（SGOV、T-Bills）
- 熊市时用现金，不动股票
- 市场回升后再补回现金桶
- 参考 [[Bucket-Strategy]]

### 策略 2：保守配置（入场时）

- 退休前 5 年逐渐降低股票比例
- 退休当年 40-50% 股票（不要 80-100%）
- 参考 [[Bond-Tent]]

### 策略 3：动态提取（Guardrails）

- 熊市时主动减支出 10-20%
- 避免"死守 4%"
- Guyton-Klinger 方法（见 [[4%规则]]）

### 策略 4：部分年金化

- 用部分资金买即期年金
- 固定基础生活费 = 社保 + 年金
- 剩余组合可更激进，无"必须卖"压力

### 策略 5：推迟退休

- 即使只推迟 1-2 年，组合表现可能完全不同
- 老板友好但身体允许时的"半退休"（[[Barista-FIRE]]）

### 策略 6：Rising Equity Glidepath

- 退休初期 40% 股
- 逐步提高到 70-80%（30 年后）
- 反直觉但有效——见 [[Bond-Tent]]

## 2022 真实案例

2022 年股债双杀（S&P -18%、Agg Bond -13%），当年退休者的 30 年成功率显著下降。但 2023-2024 快速反弹部分修复了损伤——体现了"前几年"的不确定性。

## 与其他概念的关系

- [[4%规则]]：假设的前提是平均回报；SRR 是对这个假设的挑战
- [[Bucket-Strategy]]：直接应对 SRR 的策略
- [[Bond-Tent]]：减少红色警戒区的风险敞口
- [[FIRE-Movement]]：早退休者面对的退休期更长，SRR 风险更大

## 待提炼为 wiki 条目

- [ ] `wiki/退休规划/Sequence-of-Returns-Risk.md`
- [ ] `wiki/退休规划/红色警戒区.md`
