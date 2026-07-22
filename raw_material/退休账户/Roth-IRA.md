---
title: Roth IRA 基础规则全景调研
collected: 2026-07-22
source_url:
  - https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-ira-contribution-limits
  - https://www.irs.gov/newsroom/401k-limit-increases-to-24500-for-2026-ira-limit-increases-to-7500
  - https://www.irs.gov/retirement-plans/roth-iras
  - https://www.irs.gov/retirement-plans/plan-participant-employee/amount-of-roth-ira-contributions-that-you-can-make-for-2026
  - https://www.irs.gov/publications/p590b
freshness: annual
valid_until: 2026-12-31
tax_year: 2026
---

## 概览

Roth IRA 是美国个人退休账户的一种，使用税后资金供款，账户内投资增值免税，符合条件的提取（qualified distribution）完全免税，不像 Traditional IRA 那样有强制最低提取（RMD）要求。本文按 IRS 官方页面整理 2026 年供款上限、收入限制、5 年规则和合格提取条件，供 wiki 条目引用。

---

## 一、2026 年供款上限

| 年龄 | 供款上限 |
|---|---|
| 50 岁以下 | **$7,500** |
| 50 岁及以上（含 catch-up） | **$8,600**（$7,500 + $1,100 catch-up） |

- 该上限是 Traditional IRA + Roth IRA **合并计算**的总额，不能分别各供满
- 供款截止日期为次年报税截止日（通常次年 4 月 15 日），即 2026 纳税年度的供款可延后至 2027 年 4 月申报季前完成
- 来源：IRS Newsroom "401(k) limit increases to $24,500 for 2026, IRA limit increases to $7,500"

---

## 二、2026 年收入限制（MAGI Phase-out）

直接向 Roth IRA 供款需满足 MAGI（Modified Adjusted Gross Income）限制：

| 申报状态 | 可全额供款 | Phase-out 区间（按比例递减供款额度） | 不可供款 |
|---|---|---|---|
| Single / Head of Household | MAGI < $153,000 | $153,000 – $168,000 | MAGI ≥ $168,000 |
| Married Filing Jointly (MFJ) | MAGI < $242,000 | $242,000 – $252,000 | MAGI ≥ $252,000 |
| Married Filing Separately（与配偶同住） | — | $0 – $10,000 | MAGI ≥ $10,000 |

- 超过收入限制者无法直接供款，可使用 **Backdoor Roth IRA**（先向 Traditional IRA 做不可扣除供款，再转换为 Roth，需注意 Pro-Rata Rule，详见 `raw_material/退休账户/Backdoor-Roth-IRA.md`）
- 来源：IRS Retirement Topics - IRA Contribution Limits

---

## 三、5-Year Rule（5 年规则）——两套独立计时

Roth IRA 有两套不同的 5 年规则，容易混淆：

### 1. 增值免税的 5 年规则（适用于所有 Roth IRA 持有人）

- 从**首次向任意一个 Roth IRA 供款（或转换）的纳税年度 1 月 1 日**起算满 5 年
- 只要满足这条 + 年满 59½ 岁（或死亡/残疾/首次购房例外），提取的增值部分才算"qualified distribution"、完全免税
- 该 5 年时钟对每个人只计算一次（不因换开户行、开新 Roth IRA 而重新起算）

### 2. Roth 转换（Conversion）的 5 年规则（针对提前提取转换本金的罚金）

- 每笔从 Traditional IRA/401k 转换到 Roth IRA 的金额，各自单独起算 5 年时钟
- 若在转换后 5 年内、且未满 59½ 岁时提取该笔转换本金，需缴纳 **10% 提前提取罚金**（即使转换本金本身提取不征所得税，因为转换时已缴过税）
- 每年做的转换分别计时（"conversion ladder"策略正是利用这一规则，为提前退休规划持续供应免罚金的本金）

---

## 四、Qualified Distribution（合格提取）条件

提取 Roth IRA 增值部分（不含本金）完全免税且免罚金，需**同时满足**：

1. 满足上述"增值免税 5 年规则"（首次供款满 5 年）
2. **且**符合以下至少一项触发条件：
   - 年满 59½ 岁
   - 死亡（受益人提取）
   - 完全残疾
   - 首次购房（终身限额 $10,000）

### 本金 vs 增值：提取顺序（Ordering Rules）

- Roth IRA 提取遵循特定顺序：**先提取本金（直接供款），再提取转换本金，最后提取增值**
- 本金（历年直接供款）**随时可无税无罚金取出**，不受年龄或 5 年规则限制（因为已用税后资金供款）
- 转换本金：若未满足转换的 5 年规则且未满 59½ 岁提取，需缴 10% 罚金（但不征所得税，因转换时已交税）
- 增值部分：仅在满足"5 年规则 + 触发条件"时完全免税；否则需缴纳普通所得税 + 10%罚金（早期提取）

---

## 五、无 RMD（强制最低提取）

- Roth IRA 持有人本人在世期间**没有 RMD 要求**（与 Traditional IRA/401k 不同，也与 2024 年后 Roth 401k 已取消 RMD 的规则一致）
- 受益人（继承 Roth IRA）需遵循继承规则（多数非配偶受益人适用 SECURE Act 的 10 年清空规则），但期间的增值提取仍免税（只要原账户已满足 5 年规则）

---

## 六、常见误解

1. **误以为 50 岁以上 catch-up 金额人人相同**：catch-up 金额本身不受收入限制影响，但整体供款仍需满足收入限制才能供款
2. **误以为换新开户行会重置 5 年时钟**：增值免税的 5 年规则从"首次向任意 Roth IRA 供款"起算，全生涯只计一次
3. **混淆"转换 5 年规则"与"增值免税 5 年规则"**：两者独立计时，目的不同（前者防止绕开提前提取罚金，后者决定增值何时免税）
4. **忽视 MAGI 计算口径**：MAGI 并非线上 AGI 直接照搬，需加回部分调整项（如学生贷款利息抵扣、海外收入排除等），临界值附近应仔细计算

---

## 参考来源

- [IRS - Retirement Topics: IRA Contribution Limits](https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-ira-contribution-limits)
- [IRS Newsroom - 401(k) limit increases to $24,500 for 2026, IRA limit increases to $7,500](https://www.irs.gov/newsroom/401k-limit-increases-to-24500-for-2026-ira-limit-increases-to-7500)
- [IRS - Roth IRAs](https://www.irs.gov/retirement-plans/roth-iras)
- [IRS - Amount of Roth IRA Contributions That You Can Make for 2026](https://www.irs.gov/retirement-plans/plan-participant-employee/amount-of-roth-ira-contributions-that-you-can-make-for-2026)
- [IRS Publication 590-B - Distributions from IRAs](https://www.irs.gov/publications/p590b)
