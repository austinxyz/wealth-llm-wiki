# 401K Rollover（401K 转出规则）

**收集日期：** 2026-04-16

## 来源

- [IRS: Rollovers of retirement plan and IRA distributions](https://www.irs.gov/retirement-plans/plan-participant-employee/rollovers-of-retirement-plan-and-ira-distributions)（官方）
- [IRS Topic 413 Rollovers from retirement plans](https://www.irs.gov/taxtopics/tc413)（官方）
- [IRS Retirement plans FAQs regarding IRAs](https://www.irs.gov/retirement-plans/retirement-plans-faqs-regarding-iras)
- [IRS: FAQs relating to waivers of the 60-day rollover requirement](https://www.irs.gov/retirement-plans/retirement-plans-faqs-relating-to-waivers-of-the-60-day-rollover-requirement)
- [Fidelity: Rollover IRA](https://www.fidelity.com/retirement-ira/401k-rollover-ira)
- [Empower: Rollover IRA taxes and the 60-day rule](https://www.empower.com/the-currency/money/rollover-ira-taxes-60-day-rule)
- [Understanding Trustee-to-Trustee Transfers, Direct Rollovers, and Indirect Rollovers](https://drsfp.com/understanding-trustee-to-trustee-transfers-direct-rollovers-and-indirect-rollovers)

## 核心概念

离职（或退休）后处理前雇主 401K 的方式有四种选择：

1. **留在原 401K**（若金额 >$7,000，部分雇主允许保留）
2. **Rollover 到新雇主 401K**（合并管理）
3. **Rollover 到 IRA**（Traditional 或 Roth，灵活度最高）
4. **取现**（最差选择，大多数情况要缴税 + 罚款）

## 两种 Rollover 方式

### ✅ 方式 A：Direct Rollover / Trustee-to-Trustee Transfer（推荐）

- 原 401K 管理员直接把钱汇给新账户管理员
- **不触发税务事件**（如果前后账户类型匹配）
- **不预扣税**
- **不受 60 天限制**
- **不受"一年一次"IRA rollover 限制**
- **这是唯一建议的方式**

### ⚠️ 方式 B：Indirect Rollover / 60-Day Rollover

- 原 401K 把支票开给**本人**
- 自动预扣 **20% 联邦税**
- 60 天内必须把**全额**（含预扣的 20%）存入新账户
- 预扣的 20% 在报税时作为已缴税退回（如果全额到位）

**陷阱**：如果你自己没有其他资金垫付那 20%，到账新账户的只有 80%。IRS 视剩下 20% 为"未完成 rollover"，按普通所得税 + 10% 罚款处理（59.5 岁前）。

**强烈不推荐 Indirect**，除非极特殊情况（如临时周转 60 天内的需求，有能力垫付 20%）。

## 目标账户对应关系

| 原 401K 类型 | Direct 到 | 税务事件 |
|------------|----------|---------|
| Traditional 401K | Traditional IRA / Rollover IRA | 无 |
| Traditional 401K | Roth IRA | ✅ Conversion：全额按普通所得税课税 |
| Roth 401K | Roth IRA | 无（但"5 年 Rule"重置需注意） |
| Traditional 401K | 新 Traditional 401K | 无 |
| Roth 401K | 新 Roth 401K | 无 |

## 税务细节

### Rollover IRA 与 Traditional IRA 的异同

- **规则完全一致**：供款规则、扣除、RMD、提取罚款等相同
- **区别**：Rollover IRA 保留"出生于雇主计划"的属性
- **原因**：为了保持 ERISA 破产保护的最高级别，部分建议保留"Rollover IRA"独立账户
- 实际操作：很多人直接混入已有 Traditional IRA，没问题

### Roth 401K → Roth IRA

- 避免 Roth 401K 的 RMD（73 岁强制提取）
- **5 年 Rule 重新计算**：Roth IRA 5 年起始时间是首次存入 Roth IRA 的日期（可能早于 Roth 401K）
- 税务上完全免税转换

### Traditional 401K → Roth IRA（Conversion）

- 把税前资金转为税后 → 全额加入当年应税收入
- 适合"低收入年份"（退休早期、gap year）
- 这是 **Roth Conversion Ladder** 策略的核心

## 常见陷阱

### 1. 忘了 60 天

IRS 在"合理原因"下可以豁免（如医院、自然灾害），但不能因拖延、遗忘豁免。建议 **永远用 Direct Rollover**。

### 2. Pro-Rata Rule 影响 Backdoor Roth

Rollover 来的 pre-tax IRA 会污染 [[Backdoor-Roth-IRA]] 的 Pro-Rata 计算。高收入者的策略优先级：
- **保留在 401K**（或 rollover 回新 401K）
- 而不是 Rollover 到 IRA

### 3. 公司股票（NUA 策略）

如果 401K 里持有公司股票，有"Net Unrealized Appreciation (NUA)"特殊规则：把股票直接取出到 Taxable 账户（而非 rollover 到 IRA），未来卖出时增值部分按**长期资本利得税率**而非普通所得税率。适合高增值股票 + 退休时期。

### 4. After-tax 部分的独立转换

如果 401K 里有 after-tax 部分（[[Mega-Backdoor-Roth]] 的积累），可以 **把 pre-tax 部分 Roll 到 Traditional IRA，把 after-tax 部分 Roll 到 Roth IRA**，同时完成。

## 离职后操作时机建议

- **不急**：401K 通常可以留到 65岁以后（如果金额 >$7,000）
- **有 Backdoor Roth 需求**：尽量不 rollover 到 IRA（保留在 401K）
- **公司股票巨额增值**：优先评估 NUA
- **新雇主好 401K**（低费率、支持 Mega Backdoor）：可 rollover 合并
- **想要更灵活投资选择**：Rollover 到 IRA

## 待提炼为 wiki 条目

- [ ] `wiki/账户类型/401K-Rollover.md`
- [ ] `wiki/税务策略/NUA策略.md`（Net Unrealized Appreciation）
- [ ] `wiki/税务策略/Roth-Conversion-Ladder.md`
