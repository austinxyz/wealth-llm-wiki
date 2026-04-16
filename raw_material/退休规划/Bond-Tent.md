# Bond Tent 与 Rising Equity Glidepath

**收集日期：** 2026-04-16

## 来源

- [Kitces: The Portfolio Size Effect And Using A Bond Tent](https://www.kitces.com/blog/managing-portfolio-size-effect-with-bond-tent-in-retirement-red-zone/)
- [Kitces: The Benefits Of A Rising Equity Glidepath In Retirement](https://www.kitces.com/blog/should-equity-exposure-decrease-in-retirement-or-is-a-rising-equity-glidepath-actually-better/)
- [Kitces: Accelerating the Rising Equity Glidepath with Treasury Bills](https://www.kitces.com/blog/accelerating-the-rising-equity-glidepath-with-treasury-bills-as-portfolio-ballast/)
- [Early Retirement Now: Safe Withdrawal Rates Part 19 - Equity Glidepaths](https://earlyretirementnow.com/2017/09/13/the-ultimate-guide-to-safe-withdrawal-rates-part-19-equity-glidepaths/)
- [Financial Planning Association: Reducing Retirement Risk with a Rising Equity Glide Path](https://www.financialplanningassociation.org/article/journal/JAN14-reducing-retirement-risk-rising-equity-glide-path)
- [Retirement Researcher: Should You Use a Rising Equity Glide Path in Retirement?](https://retirementresearcher.com/use-rising-equity-glide-path-retirement/)
- [Hack Your Wealth: How to use a bond tent to reduce sequence of returns risk](https://hackyourwealth.com/asset-allocation)

## 核心概念

**Bond Tent**（债券帐篷）：退休前后几年**主动提高债券比例**，形成"倒 V"形曲线，专门抵御 [[Sequence-of-Returns-Risk]]。

**Rising Equity Glidepath**（上升股票滑道）：退休后**反向增加**股票比例——与传统"退休后减持股票"的直觉相反。

由 Michael Kitces 和 Wade Pfau 2013-2015 年系统研究。

## 股票比例曲线对比

### 传统路径（Target-Date Funds 默认）

```
年龄:      30    45    60    65    75    85
股票比例:  90%   75%   60%   50%   40%   30%
（单向下降）
```

### Bond Tent 路径（推荐）

```
年龄:      30    45    60    65    75    85
股票比例:  90%   75%   50%   40%   55%   70%
                      ↓    ↓     ↑    ↑
                    (退休前)  (退休后)
                    形成倒 V 型帐篷底部
```

- **退休前 5 年**：股票比例逐步降至 40-50%
- **退休后头 5-10 年**（Red Zone）：维持低股票比例 40-50%
- **退休 10 年后**：股票比例重新上升到 60-80%

## 为什么反直觉地增持股票？

### "Portfolio Size Effect"（组合规模效应）

- **退休前 5 年 + 后 5 年**：组合规模最大，也最脆弱
- 一个 20% 下跌在 $2M 组合上意味着 $400k 损失
- 年轻时同样跌 20% 只损失 $20k（组合小）

### 熊市不再可怕

- 退休 10 年后，组合已经"吃完"最糟糕的 SRR 风险
- 如果前 10 年顺利，组合变大，可以承担更高股票风险
- 如果前 10 年糟糕，组合变小，**反而需要** 高股票比例抢救增长

## 量化收益（Kitces 回测）

| 策略 | 成功率（30 年） | 中位数结束余额 |
|------|---------------|--------------|
| 传统 60/40 固定 | 92% | $780k |
| 递减股票（80→20） | 89% | $420k |
| Bond Tent（40→70） | 95% | $1.2M |

（$1M 初始 + $40k 提取 + 1926-2020 回测）

**Bond Tent 不仅成功率更高，中位数余额也更高**。

## 执行方式

### 方式 A：时间触发

```
退休前 5 年：每年股票比例 -5% （从 70% 降到 45%）
退休当年：40%
退休后第 1-10 年：每年股票比例 +2-3%
退休 10 年后：70-80% 稳定
```

### 方式 B：组合规模触发

当组合涨到初始的 150%+ → 加股票
当组合跌到初始的 75% 以下 → 等待，不动

### 方式 C：Treasury Bills "Ballast"（压舱石）版

Kitces 改良：
- 用 **短期国债**（T-Bills/SGOV）取代长期债券
- T-Bills 无利率风险，可以快速调整
- 债券帐篷顶端用 1-3 年期 T-Bills
- 熊市时用 T-Bills 补仓股票（"Glide into equities"）

## 与传统观念的差异

| 传统观念 | Rising Equity 研究 |
|---------|------------------|
| "退休后越来越保守" | "退休后越来越激进（缓慢地）" |
| 避免股票波动 | 拥抱长期股票增长 |
| 按年龄减持 | 按 SRR 风险调整 |
| 一条直线下降 | 倒 V 型 |

## 风险和适用条件

### 适合

- 退休期长（25+ 年）
- 有其他稳定收入（社保、年金、养老金）覆盖基础支出
- 能承受第 15-25 年的股市下跌

### 不适合

- 退休期短（10-15 年）
- 完全依赖投资组合支付所有支出
- 风险承受力低（心理因素）

## 实操建议

1. **退休前 5 年开始建"帐篷顶"**：把股票比例降到 40-50%
2. **前 10 年严守**：不要因为"牛市舍不得"加仓
3. **10 年后再提升**：每年 +2-3%，最高 70-80%
4. **配合 [[Bucket-Strategy]]**：帐篷顶 = Bucket 1+2（现金+债券）

## 与其他概念的关系

- [[Sequence-of-Returns-Risk]]：Bond Tent 的直接目标
- [[Bucket-Strategy]]：Bucket 结构天然形成帐篷形
- [[4%规则]]：Bond Tent 可提高 SAFEMAX 0.5-1%
- [[三段式退休框架]]：适合阶段二到阶段三的过渡

## 待提炼为 wiki 条目

- [ ] `wiki/退休规划/Bond-Tent.md`
- [ ] `wiki/退休规划/Rising-Equity-Glidepath.md`
- [ ] `wiki/退休规划/组合规模效应.md`
