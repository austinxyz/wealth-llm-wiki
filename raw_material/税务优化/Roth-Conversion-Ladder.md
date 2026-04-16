# Roth Conversion Ladder（Roth 转换阶梯）

**收集日期：** 2026-04-16

## 来源

- [NerdWallet: Roth Conversion Ladder: How It Works](https://www.nerdwallet.com/retirement/learn/roth-conversion-ladder)
- [ChooseFI: Roth Conversion Ladder](https://choosefi.com/tax-strategies/roth-conversion-ladder)
- [Mad Fientist: How to Access Retirement Funds Early](https://www.madfientist.com/how-to-access-retirement-funds-early/)
- [I Will Teach You To Be Rich: Roth Conversion Ladder](https://www.iwillteachyoutoberich.com/roth-conversion-ladder/)
- [The College Investor: Roth Conversion Ladder Could Save You $100,000+](https://thecollegeinvestor.com/77049/roth-conversion-ladder-explained/)
- [Northwestern Mutual: Roth Conversion Ladder](https://www.northwesternmutual.com/life-and-money/roth-conversion-ladder/)
- [Farther: Roth IRA Conversion Ladder: How Does It Work?](https://www.farther.com/foundations/roth-ira-conversion-ladder-how-does-it-work)

## 核心概念

**Roth Conversion Ladder = 早退休者访问 Traditional 401K/IRA 资金的合法通道**，避开 59.5 岁前提取的 10% 罚款。

执行逻辑：
1. 每年把 Traditional IRA 的一部分**转换**为 Roth IRA（当年按普通所得税率缴税）
2. 等 **5 年** 后，该笔转换的本金可以**免税 + 免罚款** 提取
3. 每年重复一次，形成"滑梯"式每年可取

## 5 年规则（关键陷阱）

⚠️ **每笔转换都有独立的 5 年时钟**。

- 2027 年 1 月 1 日做的转换 → 2032 年 1 月 1 日后可取
- 2028 年 1 月 1 日做的转换 → 2033 年 1 月 1 日后可取
- **注意**：IRS "5 年"实际是**5 个报税年**——2027 年 12 月 31 日转换 vs 2028 年 1 月 2 日转换的计算结果相同

这个 5 年规则 **独立于 Roth IRA 本身的 5 年规则**（首次开户 5 年后才能取 earnings）。

## 典型执行时间线

假设 40 岁准备早退休，年支出 $60k：

| 年龄 | 年份 | 操作 | 资金来源（生活费） |
|------|------|------|-----------------|
| 40 | 2026 | 第一次转换 $60k | Taxable 账户 / 现金储备 |
| 41 | 2027 | 第二次转换 $60k | Taxable 账户 |
| 42 | 2028 | 第三次转换 $60k | Taxable 账户 |
| 43 | 2029 | 第四次转换 $60k | Taxable 账户 |
| 44 | 2030 | 第五次转换 $60k | Taxable 账户 |
| **45** | **2031** | **继续转换 $60k** | **取 2026 年转换的 $60k**（免税免罚款）|
| 46 | 2032 | 继续转换 | 取 2027 年转换的 |
| ... | ... | ... | ... |

**前 5 年需要有其他资金** 度过（"Roth Ladder Bridge"）。

## 前 5 年资金桥梁（Bridge Period）

可选资金来源（无 10% 罚款）：

1. **Taxable Brokerage 账户**：卖出资产（按长期资本利得税率）
2. **Roth IRA 本金**：随时可取（不含增值）
3. **Rule 72(t) / SEPP（Substantially Equal Periodic Payments）**：按 IRS 计算的固定金额从 IRA 提取，至少 5 年或 59.5 岁（较晚）
4. **HSA 合格医疗提取**：无罚款
5. **兼职收入**（Barista FIRE）

## 税务优化技巧

### 技巧 1：填充低税率档

2026 MFJ 12% 税率档顶部：$100,800（扣除标准扣除 $32,200 前 → 转换空间更大）

```
MFJ 转换上限 = $100,800 + $32,200 = $133,000 应税收入
```

即：**退休无其他收入时，每年可转 $133,000 只花最多 12% 税**。

FIRE 实践者常按此设置年度转换额度。

### 技巧 2：零收入年份做大转换

- 退休第一年（辞职 1 月份）— 当年只有 W-2 前几个月收入
- Gap year（休长假）
- 早退休完全无收入 → 一年转 $100k 只花 10-12% 税

### 技巧 3：分年转换

一次性转 $500k → 大部分进 32%/35% 税率档（巨亏）
分 5 年每年 $100k → 大部分留在 12%/22% 档（差 15-20% 税率）

### 技巧 4：配合长期资本利得

2026 0% 长期资本利得档：应税收入 $0-$98,900（MFJ）
→ 同一年可以同时做"$100k Roth conversion + $99k 长期资本利得卖出"，几乎零联邦税

## 加州特殊情况

**加州不给 Roth Conversion 任何优惠**：
- 转换全额按加州普通所得税率（最高 13.3%）
- 州税 + 联邦 12% 档 = 总税率约 22-25%
- 仍然比 59.5 前提取（25% + 10%罚款）划算

## 常见错误

### 错误 1：前 5 年没准备 Bridge

→ 被迫 10% 罚款提取 Traditional IRA，得不偿失

### 错误 2：一次性大转换

→ 跳 brackets，多付几万税

### 错误 3：忽略加州税

→ 只按联邦 12% 算账，实际加州还要 9.3%

### 错误 4：Pro-Rata Rule 误解

如同时做 Backdoor Roth + Roth Conversion Ladder：
- 所有 Traditional IRA 余额合并计算
- 参考 [[Backdoor-Roth-IRA]] 的 Pro-Rata 规则

### 错误 5：忘了预扣税

转换金额可以选择"源头预扣税"——**千万不要选**，否则预扣部分按提前提取计算（10% 罚款）。用 **Taxable 账户另付税**。

## 何时用 vs 不用

### 适合
- 早退休者（50s 前想取钱）
- 有多年零收入/低收入期
- Traditional 401K/IRA 大额积累
- 有 Bridge 资金（Taxable 或 Roth 本金）

### 不适合
- 退休很晚（65 后），到时直接按常规提取
- 收入持续高，转换税率 > 未来提取税率
- 无 Bridge 资金
- 加州持续税率高（近退休前也无低税窗口）

## 与其他概念的关系

- [[Roth-IRA]]：Roth 空间的来源
- [[Traditional-IRA]]：转换的来源
- [[Backdoor-Roth-IRA]]：同为 Roth Conversion，但年度上限不同
- [[4%规则]] / [[FIRE运动]]：Ladder 是 FIRE 解决"59.5 罚款墙"的主要工具
- [[401K-Rollover]]：Traditional 401K → IRA 后才能做 Ladder

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/Roth-Conversion-Ladder.md`
- [ ] `wiki/税务策略/Rule-72t-SEPP.md`
