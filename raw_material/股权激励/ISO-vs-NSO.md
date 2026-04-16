# ISO vs NSO（股票期权税务对比）

**收集日期：** 2026-04-16

## 来源

- [Carta: How Stock Options Are Taxed - ISO vs NSO Tax Treatments](https://carta.com/learn/equity/stock-options/taxes/)
- [Darrow Wealth Management: How Stock Options Are Taxed ISO vs NSO](https://darrowwealthmanagement.com/blog/how-are-stock-options-taxed/)
- [The Startup Law Blog: ISOs vs NSOs Key Differences 2026](https://www.thestartuplawblog.com/blog/iso-vs-nso-stock-options-complete-guide/)
- [Cooley GO: ISOs v NSOs What's the Difference](https://www.cooleygo.com/isos-v-nsos-whats-the-difference/)
- [Brighton Jones: ISO vs NSO Tax Implications](https://www.brightonjones.com/blog/iso-vs-nso/)
- [VestingStrategy: ISO vs NSO Complete Tax Guide 2026](https://www.vestingstrategy.com/guides/iso-vs-nso)
- [Qubit Capital: ISO vs NSO Options](https://qubit.capital/blog/iso-vs-nso-options)
- [Davis Wright Tremaine: Differences Between ISO and NSO](https://www.dwt.com/blogs/startup-law-blog/2020/07/differences-between-iso-nso)
- [ICanPitch: ISO vs NSO Startup Employees 2026](https://www.icanpitch.com/blog/iso-vs-nso-stock-options-tax-guide)
- [Orrick: What's the difference between ISO and NSO](https://www.orrick.com/en/tech-studio/resources/faq/whats-the-difference-between-an-iso-and-an-nso)

## 核心概念

**Stock Options = 以固定价格（Strike Price）购买公司股票的权利，不是义务**。

两种类型：
- **ISO**（Incentive Stock Options，激励性股票期权）
- **NSO**（Non-Qualified Stock Options，非合格股票期权 / 也称 NQSO）

**关键差异**：ISO 有**潜在税务优惠**但有严格条件；NSO 无优惠但无限制。

## ISO（激励性股票期权）

### 资格限制

- **仅限 W-2 员工**（顾问、董事不能）
- **$100k/年限额**：一年内首次可 exercisable 的 ISO 市价（Grant 时）不超过 $100k
  - 超过部分自动变为 NSO
- Option 期限 ≤ 10 年
- Strike price ≥ Grant 日 FMV

### 税务处理（理论最优）

#### Grant 日
- 无税务事件

#### Exercise 日（行权）
- **正则税**：无影响
- **AMT**：**Bargain Element**（FMV - Strike Price）× 股数 = **AMT Preference Item**
- 可能触发 [[AMT]]

#### Sale 日
必须同时满足**两个条件**才算 "Qualifying Disposition"（合格处置）：
1. Exercise 后**持有 ≥ 1 年**
2. Grant 日后**至少 2 年**

**满足条件（Qualifying Disposition）**：
- 全部利得（Sale Price - Strike Price）按**长期资本利得**课税
- 2026 税率：0% / 15% / 20%
- + NIIT 3.8%（如适用）

**不满足（Disqualifying Disposition）**：
- Bargain Element（Exercise 日 FMV - Strike Price）按**普通所得**
- 剩余（Sale Price - Exercise FMV）按**资本利得**（长期/短期看持有期）

## NSO（非合格股票期权）

### 资格

- 任何人可以（员工、顾问、董事）
- 无 $100k 限额
- Grant 日价格可以高于或低于 FMV

### 税务处理（无优惠）

#### Grant 日
- 无税务事件（如 strike = FMV）

#### Exercise 日（行权）
- **Bargain Element**（FMV - Strike Price）× 股数 = **普通所得**
- 计入 W-2 Box 1
- 按普通所得税率课税（10-37% 联邦 + 州）
- 雇主扣 FICA（社保、Medicare）
- 加州居民额外加州税（9.3-13.3%）

#### Sale 日
- 卖出价 - Exercise 日 FMV = **资本利得**
- 持有 > 1 年 = 长期（0/15/20%）
- 持有 ≤ 1 年 = 短期（普通所得税率）

## 对比表

| 维度 | ISO | NSO |
|------|-----|-----|
| Grant 日税 | ❌ | ❌ |
| Exercise 日正则税 | ❌ | ✅ Bargain as 普通所得 |
| Exercise 日 AMT | ✅ Bargain Element | ❌ |
| FICA（社保 Medicare） | ❌ | ✅ |
| 合格持有税率 | 长期资本利得 | 资本利得（Exercise 后增值部分） |
| $100k 年限额 | ✅ | ❌ |
| 可授予顾问 | ❌ | ✅ |
| 雇主税务扣除 | ❌（通常） | ✅ Bargain Element |

## 2026 税率差距

### 理想情况（ISO 合格处置 vs NSO）

| 场景 | ISO（Qualifying） | NSO |
|------|-----------------|-----|
| 联邦税率 | 20%（最高长期） | 37%（最高普通） |
| 州税（加州） | 13.3% | 13.3% |
| NIIT | 3.8% | 3.8%（部分） |
| **最高总税率** | **~37%** | **~54%** |

**$1M 利得差距：~17%（$170k）**

**这就是 ISO 在最优场景下的价值**。

## ISO 的 AMT 陷阱 ⚠️

**最大隐患**：ISO 行权但不卖出 → 当年 AMT 账单巨大。

### 例子

- 10,000 ISO @ Strike $10，Exercise 日 FMV $100
- Bargain Element = 10,000 × ($100 - $10) = **$900,000**
- 如工资 $200k，应税收入 $180k
- AMT 计算：$180k + $900k 调整 = $1,080k
  - $140k AMT 豁免（MFJ 2026）
  - AMT 税基 = $940k
  - 26% 至 $244,500 + 28% 剩余 = $195,000 AMT 税
  - 正则税（按原始 $180k）～$30k
  - **实际多交 $165,000 AMT 税**
- 这笔税**今年就要缴**（可能要卖部分股票）

### AMT Credit Carry-forward

- 未来年份，如正则税 > AMT → 可用前期 AMT 抵扣（Form 8801）
- 可能需要 5-15 年才能全部收回
- 如公司股价跌 → 未来 AMT Credit 可能部分浪费

### 规避 AMT 策略

#### 策略 1：Early Exercise + 83(b) Election

见 [[83(b)Election]]。
- 公司很早阶段（Low FMV）时 exercise
- Bargain Element 接近 $0
- AMT 几乎不触发

#### 策略 2：Quickly Dispose（快速处置）

- Exercise + **同年卖出** → Disqualifying Disposition
- 变成普通所得（失去 ISO 优势）
- **但避免巨额 AMT 税**
- 适合**无法负担 AMT 税单**的人

#### 策略 3：分批 Exercise

- 每年仅 exercise 部分
- 让 Bargain Element 分散 → AMT 在豁免范围内
- 但要跟上股价上涨

#### 策略 4：多年 ISO 计算

- 每年先算正则税
- 然后算 AMT 税
- 比较差额 → 决定当年是否 exercise

## Early Exercise + 83(b) Election

**最优 ISO 战略**（仅适用于允许的公司）：

1. 公司早期 FMV 低（如 $0.10）时
2. Exercise 所有 unvested ISO
3. 30 天内提交 83(b) Election
4. Bargain Element 接近 $0 → **无 AMT**
5. Cost basis 锁定在 Strike Price
6. 持有 > 1 年，> Grant 日 2 年 → 全额长期资本利得

**风险**：
- Exercise 时需付现金（Strike × 股数）
- 如公司失败 → 本金损失
- 离职时可能被强制回购

**适合**：startup 创始人和早期员工。

## NSO 的优势场景

### 1. 不用担心 AMT
NSO Exercise 日普通所得税清晰、立即、无 AMT 复杂度。

### 2. Cashless Exercise 容易
NSO 可简单 "Net Exercise"（公司代扣股份抵税）。

### 3. 授予顾问 / 董事
ISO 不允许，NSO 可以。

### 4. 超过 $100k ISO 限额
上限自动转 NSO，无需纠结。

## Exercise 时机决策

### 何时 Exercise

- **公司有 IPO 或 Liquidity Event 明确在望**：exercise 以锁定 ISO 优惠
- **FMV 远高于 Strike**：Bargain 大，ISO 价值高（但 AMT 风险）
- **退出前几年**：计划辞职 + 10 年 Option 期限

### 何时 Don't Exercise

- Strike > FMV：**水下期权**（Underwater）
- 公司前景不明
- 现金流紧张（付不起 AMT）

### 离职时 90 天规则

- **Standard ISO 规定**：离职后 **90 天内必须 exercise**
- 过了 90 天 → 自动变 NSO
- 有些公司延长至 5-10 年（如 Pinterest、Coinbase）→ 极有利

**策略**：辞职前检查公司 ISO 政策 + 90 天 exercise 窗口。

## 税务规划实例

### 情景 A：Tech Giant（Google、Meta 等）

**大厂 RSU 为主，ISO 极少**。如有 ISO：
- Exercise + 立即卖 → 不值得 ISO 复杂度
- 或 Exercise 少量 + 持有 > 1 年 → 赌税务优惠（股价上涨 + 长期税率）

### 情景 B：Pre-IPO Startup

**ISO 常见 + 价值大**。核心策略：
- 早期 Low FMV 时 Early Exercise + 83(b)
- 或 IPO Lockup 结束前计算 AMT
- 多年分散 exercise

### 情景 C：高增长 Startup 股价狂涨

- ISO Early Exercise 错过了（如没 83(b)）
- 现在 Bargain 巨大
- 选择：吃 AMT（复杂但优化）或 Disqualifying Sale（放弃 ISO 优惠）

## 离职相关陷阱

### 没 exercise 的 ISO
- 90 天后变 NSO 或消失
- 如 $200k Bargain 存在 → 必须决策 exercise + 巨额现金

### Already Exercised ISO
- 如满足持有条件 → 合格处置
- 不满足 → 可能强制 Disqualifying Disposition

### IPO Lockup
- 大多数员工 IPO 后 6 个月 Lockup
- Lockup 到期日 = 税务规划关键时刻

## 与其他概念的关系

- [[RSU]]：另一种股权激励（无选择权）
- [[AMT]]：ISO 的主要触发源
- [[83(b)Election]]：Early Exercise 配套
- [[ESPP]]：另一种优惠股权工具
- [[Roth-Conversion-Ladder]]：同年做 Roth 转换 + ISO exercise 要注意税阶
- [[FTC]]：海外员工行权的跨境处理

## 待提炼为 wiki 条目

- [ ] `wiki/股权激励/ISO.md`
- [ ] `wiki/股权激励/NSO.md`
- [ ] `wiki/股权激励/ISO-AMT陷阱.md`
- [ ] `wiki/股权激励/Qualifying-Disposition.md`
- [ ] `wiki/税务策略/AMT-Credit-Carryforward.md`
