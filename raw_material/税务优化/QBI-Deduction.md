# QBI Deduction（合格业务收入扣除 / Section 199A）

**收集日期：** 2026-04-16

## 来源

- [IRS: Qualified business income deduction](https://www.irs.gov/newsroom/qualified-business-income-deduction)（官方）
- [TurboTax: Qualified Business Income Deduction Explained](https://turbotax.intuit.com/tax-tips/small-business-taxes/qualified-business-income-deduction-explained/c8ImKhMX6)
- [SDO CPA: QBI Deduction 2026 Guide](https://www.sdocpa.com/qualified-business-income-deduction-guide/)
- [QuickBooks: Section 199A deduction: How do you qualify in 2026?](https://quickbooks.intuit.com/r/taxes/199a-deduction/)
- [Uncle Kam: Complete 2026 QBI Deduction Guide](https://unclekam.com/tax-write-offs/deductions/qbi-deduction-section-199a/)
- [My Tax Courses: The QBI Deduction 2026 Explained](https://mytaxcoursesonline.com/blog/post/the-qbi-deduction-2026-explained)
- [OurTaxPartner: The "Permanent" QBI Deduction 2026](https://ourtaxpartner.com/qbi-deduction-2026-guide/)

## 核心概念

**QBI Deduction / Section 199A** 允许符合条件的自雇人士和小企业主扣除最多 **20% 的合格业务收入**，不论是否 itemize。这是 2017 TCJA 创立、2025 OBBBA 法案永久化的重要税优。

```
应税收入 = 常规收入 - 标准扣除 - QBI Deduction (20%)
```

## 2026 重大更新

- ✅ **永久化**：2025 年 7 月 "One Big Beautiful Bill"（OBBBA）将 QBI 从原定 2025 年底到期改为**永久条款**
- ✅ **新增 $400 最低扣除**：如果业务收入 ≥$1,000，2026 起最低可扣 $400
- ✅ **扣除率保持 20%**

## 适用业务形式

✅ 适用：
- Sole Proprietorship（个体户，Schedule C）
- Partnership（合伙企业）
- S Corporation
- LLC（视选择的税务形式）
- REITs 分红、PTP（Publicly Traded Partnership）收入
- 某些信托

❌ 不适用：
- C Corporation（已享受 21% 公司税率）
- 普通就业 W-2 工资
- Capital Gains、合格分红、利息（这些是投资收入，不是业务收入）

## 2026 收入门槛

核心规则 = **收入门槛 + 业务类型** 共同决定能否全额扣除。

### 完全扣除门槛（Full QBI）

| 申报状态 | 应税收入上限 |
|---------|------------|
| Single | ~$200,000 |
| MFJ | ~$400,000 |

收入在此以下 → **不区分业务类型**，可直接扣 20% × QBI。

### Phase-out Range（部分扣除）

| 申报状态 | 范围 |
|---------|------|
| Single | $200,000 – $275,000 |
| MFJ | $400,000 – $550,000 |

### 超过上限（Phase-out 结束）

- **SSTB**（特定服务业）：**完全不能扣**
- **非 SSTB**：受 W-2 工资 + 合格不动产限制

## SSTB vs 非 SSTB

### SSTB = Specified Service Trade or Business（高收入会被限制的行业）

⚠️ 含：
- 健康（医生、牙医、兽医）
- 法律（律师、法务咨询）
- 会计（CPA、审计）
- 精算
- 表演艺术
- 咨询（Consulting）
- 体育
- 金融服务（投资管理）
- 经纪服务
- "依赖个人声誉或技能" 的任何业务

### 非 SSTB = 其他行业

- 制造业
- 建筑
- 零售
- 软件开发（一般不算"咨询"）
- 房地产出租（符合条件）
- 农业

## 计算公式（简化版）

```
QBI Deduction = min(
    20% × QBI（合格业务收入）,
    20% × (应税收入 - 净资本利得)
)

如果收入超过门槛（非 SSTB）：
QBI Deduction = min(
    20% × QBI,
    更高者: 50% × W-2工资 OR 25% × W-2 + 2.5% × 合格资产基础
)
```

## 实例计算

### 例 1：低收入自雇咨询顾问

- Schedule C 净收入：$80,000
- 自雇税扣除：$5,650
- MFJ 应税收入：$100,000（< $400k 门槛）
- QBI Deduction = 20% × $80,000 = **$16,000**
- 联邦应税收入降为 $84,000
- **联邦节税约 $3,520**（22% 档）

### 例 2：高收入 SSTB（咨询）

- Schedule C 净收入：$300,000
- MFJ 应税收入：$600,000（> $550k，phase-out 结束）
- SSTB → **$0 QBI Deduction**

### 例 3：高收入非 SSTB（软件开发）

- Schedule C 净收入：$300,000
- 业务支付 W-2 工资：$150,000
- MFJ 应税收入：$600,000
- QBI Deduction = min($60,000, 50% × $150,000=$75,000) = **$60,000**

## 与其他税优的协同

### 与 [[Solo-401K-vs-SEP-IRA]]

**注意陷阱**：Solo 401K 雇主部分供款**会减少 QBI**。高收入 SSTB 者可能：
- 少供 401K → QBI 扣除多
- 多供 401K → 401K 税优 + QBI 降低

需计算净效益。

### 与实体选择（S-Corp）

**S-Corp 陷阱**：把自己设为 S-Corp 员工 + 老板
- W-2 工资部分：不享受 QBI（但不交 self-employment tax）
- K-1 分红部分：享受 QBI

高收入非 SSTB 者可能 S-Corp 更优；SSTB 者往往 Sole Prop 更优。

### 与 HSA / IRA 扣除

- HSA / IRA 扣除**降低应税收入** → 可能让你重新进入 QBI 全额扣除区间
- 对收入在门槛附近的人特别重要

## 加州影响

**加州不承认 QBI Deduction**。联邦扣 20% 不改变加州税基。加州税仍按 Schedule C 全额净收入。

## 申报

- Form 8995（简化版，收入在门槛内）
- Form 8995-A（复杂版，收入超门槛或有 SSTB）
- 需跟随 1040 一起提交

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/QBI-Deduction.md`
- [ ] `wiki/税务策略/SSTB判定.md`
- [ ] `wiki/税务策略/S-Corp-QBI优化.md`
