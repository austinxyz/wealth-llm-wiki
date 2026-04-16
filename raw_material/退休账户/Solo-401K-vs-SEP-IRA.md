# Solo 401K vs SEP IRA（自由职业退休账户）

**收集日期：** 2026-04-16

## 来源

- [IRS One Participant 401k Plans](https://www.irs.gov/retirement-plans/one-participant-401k-plans)（官方）
- [IRS Retirement plans for self-employed people](https://www.irs.gov/retirement-plans/retirement-plans-for-self-employed-people)（官方）
- [Fidelity: Solo 401(k) contribution limits 2025 and 2026](https://www.fidelity.com/learning-center/smart-money/solo-401k-contribution-limits)
- [Guideline: The Ultimate Guide to Solo 401(k)s](https://www.guideline.com/education/articles/the-ultimate-guide-to-solo-401ks)
- [IRA Financial: Solo 401(k) vs SEP IRA 2026](https://udirectira.com/solo-401k-vs-sep-ira-2026/)
- [IRA Financial: Beyond the SEP IRA - High-Earner's Guide to Solo 401(k) in 2026](https://www.irafinancial.com/blog/a-high-earners-guide-to-the-solo-401k/)

## 适用场景

自由职业者、独立合同工、单人 LLC 或一人小企业（可配偶共同参与）。**两者均可用于 1099 收入、Side Gig、咨询业务**。

## 供款结构对比（2026）

### Solo 401K（One-Participant 401k）

两个身份同时供款：

| 组成 | 2026 上限 |
|------|----------|
| 员工部分（Employee Deferral） | $24,500 |
| 员工 Catch-up（50-59 岁 / 64+） | +$8,000 |
| 员工 Super Catch-up（60-63 岁） | +$11,250 |
| 雇主部分（Employer Profit Sharing） | 最高 25% 自雇净收入 |
| **合计上限** | **$72,000**（<50） / **$80,000**（50-59、64+） / **$83,250**（60-63） |

### SEP IRA

**只有雇主部分**：

| 组成 | 2026 上限 |
|------|----------|
| 雇主供款 | 最高 25% 自雇净收入 |
| **合计上限** | **$72,000**（与 Solo 401K 相同的硬顶） |
| Catch-up | **不允许** |

## 核心差异

| 维度 | Solo 401K | SEP IRA |
|------|-----------|---------|
| 员工部分供款 | ✅ 最多 $24,500 | ❌ 无员工部分 |
| Catch-up 额外供款 | ✅（50+） | ❌ |
| 达到上限所需收入 | 较低（约 $190k） | 较高（约 $290k） |
| Roth 选项 | ✅（2026 起部分计划支持 Roth） | ❌（仅 Traditional） |
| 贷款（Loan） | ✅ 可以借贷 | ❌ 不允许 |
| 开户/管理复杂度 | 较高（需 EIN，$250+ 账户管理费） | 极简 |
| 开户截止 | 会计年度 Dec 31 | 报税截止日期 + extension |
| Form 5500-EZ | 账户 >$250k 需报 | ❌ 无需 |
| 员工覆盖 | 仅本人 + 配偶 | 必须覆盖所有合格员工（同比例） |
| 配偶供款 | ✅（如有合法雇佣关系） | ✅（作为员工） |

## 何时选 Solo 401K

- 收入较低（<$290k）但想拉满供款
- 想要 Roth 选项
- 可能需要借贷（医疗、首付）
- 配偶也参与业务

## 何时选 SEP IRA

- 收入极高，不 care 员工部分的 $24,500（反正会超）
- 只想要极简操作，不想管员工部分申报
- 还没决定是否要长期自雇
- 报税延期开户可追溯上一年度

## 自雇净收入计算

**自雇者的"薪资"计算复杂**：

```
自雇净收入 = 毛收入 - 业务开销
"可供款基数" = 自雇净收入 - (0.9235 × SE 税一半)
雇主最大供款 ≈ 可供款基数 × 20%（非 25%，因为供款本身计入分母）
```

使用 IRS Publication 560 Rate Table 或在线计算器。

## W-2 有雇主 + 自雇副业怎么办

- 员工部分（$24,500）在 **所有 401K 计划中合计**，不能重复使用
- 但**雇主 profit-sharing** 按单独计算：W-2 工作的雇主 match + Solo 401K 的 employer 供款各自独立
- 这使得高收入者在 W-2 拉满 + Side Gig Solo 401K 是常见优化策略

## Mega Backdoor Roth（Solo 401K 内）

Solo 401K 如设置 "after-tax contribution + in-plan Roth conversion"，可以执行 [[Mega-Backdoor-Roth]]，年供 Roth 空间达 $47,500+。

## 待提炼为 wiki 条目

- [ ] `wiki/账户类型/Solo-401K.md`
- [ ] `wiki/账户类型/SEP-IRA.md`
- [ ] `wiki/账户类型/自雇退休账户选择框架.md`
