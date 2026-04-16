# Traditional IRA

**收集日期：** 2026-04-16

## 来源

- [IRS: 401(k) limit increases to $24,500 for 2026, IRA limit increases to $7,500](https://www.irs.gov/newsroom/401k-limit-increases-to-24500-for-2026-ira-limit-increases-to-7500)（官方）
- [IRS Publication 590-A Contributions to IRAs](https://www.irs.gov/publications/p590a)
- [IRS Retirement topics - IRA contribution limits](https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-ira-contribution-limits)
- [Fidelity: IRA contribution limits for 2025 and 2026](https://www.fidelity.com/learning-center/smart-money/ira-contribution-limits)
- [STRATA Trust: IRA Contribution Rules Explained for 2026](https://www.stratatrust.com/insights/ira-contribution-rules-explained-for-2026/)

## 核心概念

Traditional IRA 是个人退休账户的"传统"版：**税前供款**（可扣除）、**税延增长**、**提取时按普通所得课税**。与 [[Roth-IRA]] 的本质区别是**何时缴税**。

## 2026 供款上限

| 年龄 | 供款上限 |
|------|---------|
| <50 岁 | **$7,500/年** |
| ≥50 岁（Catch-up） | **$8,600/年** |

同一人的 Traditional IRA + Roth IRA 合计不能超过这个上限。

## 税务扣除资格（关键）

**有没有工作退休计划（401K/403B/SEP 等）决定是否可扣除：**

### 如果本人有工作退休计划覆盖（Active Participant）

| 申报状态 | 完全扣除 | 部分扣除（phase-out） | 不可扣除 |
|---------|---------|---------------------|---------|
| Single / HoH | MAGI < $81,000 | $81,000 – $91,000 | MAGI ≥ $91,000 |
| MFJ | MAGI < $129,000 | $129,000 – $149,000 | MAGI ≥ $149,000 |
| MFS | — | $0 – $10,000 | MAGI ≥ $10,000 |

### 如果本人无工作退休计划，但配偶有

| 申报状态 | 完全扣除 | 部分扣除 | 不可扣除 |
|---------|---------|---------|---------|
| MFJ（本人无，配偶有） | MAGI < $242,000 | $242,000 – $252,000 | MAGI ≥ $252,000 |

### 如果双方都没有工作退休计划

**供款全额可扣除**，无收入限制。

## 即使不可扣除也可以供款

**关键要点**：即使收入超限无法扣除，仍然可以做 **不可扣除的 Traditional IRA 供款（Nondeductible Traditional IRA Contribution）**。这是 [[Backdoor-Roth-IRA]] 策略的第一步。

需要每年申报 **Form 8606** 以追踪 after-tax basis。

## 提取规则

- **59.5 岁前提取**：10% 罚款 + 普通所得税（部分例外：首次购房 $10k、教育、医疗、SEPP 72(t)）
- **59.5 岁后**：按普通所得税率（10-37%）
- **73 岁强制最低提取（RMD）**：每年必须按 IRS 表格比例提取，否则罚款 25%（修正及时可降至 10%）

## Traditional vs Roth 决策框架

| 选 Traditional | 选 Roth |
|--------------|--------|
| 预期退休后税率**更低** | 预期退休后税率**更高** |
| 需要当年降低应税收入 | 已经拉满当前年抵扣 |
| 即将退休，无多年增长 | 年轻，有数十年增长期 |
| 希望留给继承人时保留税优 | 继承人未来面临更高税率 |

## 与其他账户的关系

- [[Roth-IRA]]：同一人供款上限合并计算
- [[401K]]：401K 覆盖判定影响 Traditional IRA 扣除资格
- [[Backdoor-Roth-IRA]]：Traditional IRA 是"后门"的入口账户
- [[401K-Rollover]]：离职后 Traditional 401K → Rollover IRA

## 待提炼为 wiki 条目

- [ ] `wiki/账户类型/Traditional-IRA.md`
- [ ] `wiki/账户类型/Rollover-IRA.md`（与 Traditional 规则一致但通常独立账户）
