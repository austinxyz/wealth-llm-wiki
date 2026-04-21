---
title: Dual-Status-Alien
category: 中美对比
tags: [中美对比, Dual-Status, 年内身份变更, 1040, 1040NR]
source: "[[raw_material/身份税务/绿卡vs公民vs非居民]]"
updated: 2026-04-20
status: draft
---

## 定义

**Dual-Status Alien（双重身份外国人）**：一个税年内身份发生变更的人——通常是 NRA 变 RA（取得绿卡 / 满足 SPT）或 RA 变 NRA（离境 / 放弃绿卡）。该年必须按**两段**分别报税：居民期按全球所得、非居民期仅美国源，申报复杂度和税负都很高。

## 核心要点

**典型 Dual-Status 场景**：

### 场景 1：年内取得绿卡（最常见）
- 1-6 月：持 H1B，未满足 SPT → NRA
- 7 月取得绿卡 → 变 RA
- **该年**：
  - 1-6 月按 NRA（1040NR）
  - 7-12 月按 RA（1040）
  - 合并为 Dual-Status Return

### 场景 2：年内离境（放弃身份）
- 1-8 月：绿卡 LTR，在美居住 → RA
- 9 月 I-407 放弃 → 变 NRA（Expatriate）
- **该年**：
  - 1-9 月按 RA（全球所得）
  - 9-12 月按 NRA（仅美国源）
  - 加 Form 8854（Exit Tax）

### 场景 3：年内完成 SPT
- 1-4 月：工作签证，天数不够 → NRA
- 5 月后累计满 183 天（3 年加权） → RA
- **该年**：按 Dual-Status 处理

### 场景 4：年内首日选择（First-Year Choice）
- 新到美国后半年，SPT 未满足
- 选择追溯全年为 RA（MFJ 优惠）
- 不算 Dual-Status，直接全年 RA

**Dual-Status Return 的特殊规则**：

**税表组合**：
- **主表**：1040（居民期收入）或 1040NR（非居民期收入），**取最后身份**决定
- **附表**：另一半身份的收入作为附件
- 标注 "Dual-Status Return" 或 "Dual-Status Statement"

**不能用的待遇**：

| 待遇 | Dual-Status 是否可用？ |
|------|--------------------|
| **Standard Deduction** | ❌ **不可用**（只能 Itemize） |
| **Head of Household** 申报 | ❌ |
| **Married Filing Jointly**（MFJ） | ❌（除非首年选举 6013(g)）|
| 儿童税收抵免（CTC） | 部分限制 |
| Earned Income Credit（EIC） | ❌ |
| Foreign Earned Income Exclusion | ❌（RA 期仅美国工作部分可用） |

**可用待遇**：
- Itemized Deductions（居民期）
- Foreign Tax Credit（居民期外国已缴税）
- Personal Exemption（某些年份）
- 协定条款优惠（配合 Form 8833）

**关键计算原则**：

### 居民期（Resident Portion）
```
收入：全球所得（居民期内收到的）
扣除：Itemized（不能标准扣除）
税率：常规 IRC 税率表
```

### 非居民期（Nonresident Portion）
```
收入：仅美国来源（工资、租金、股息、利息）
扣除：仅与美国收入相关的
预扣：NRA 预扣（股息 30%/协定 10%）
税率：常规税率表 或 30% 固定（看类型）
```

### 合并
- 两部分税额相加
- 注意避免双重计算（同一笔收入不能两次算入）

**Dual-Status 的税负比较**：

同样 $100k 全年收入的三种场景对比（简化，假设单身）：

| 场景 | 税表 | 标准扣除 | 税额 |
|------|------|--------|------|
| 全年 NRA（无绿卡 + SPT 不满足） | 1040NR | ❌ 无 | ~$22k |
| 全年 RA（绿卡或 SPT 全年满足）| 1040 | $15k（2026） | ~$14k |
| Dual-Status（年中身份变更） | 1040 + 1040NR | **❌ 无**（Itemize 限制）| **~$19k** |

> 💡 Dual-Status **通常比全年 RA 税更高**（因为失去 standard deduction 和 MFJ）——First-Year Choice 常用于优化。

**First-Year Choice（首年选择）详解**：

若年中首次成为 RA（如 10 月取得绿卡），可选追溯：

**条件**：
1. 当年未满足 SPT
2. **次年**满足 SPT（连续居住 31 天 + 75% 居住时间）
3. 与**美国公民 / RA 配偶**联合申报
4. 选择 Section 6013(g)/6013(h)：非居民配偶视为居民全年

**后果**：
- ✅ 享受 MFJ 税率 + Standard Deduction
- ❌ 配偶全年全球所得应税
- ❌ 需披露配偶海外账户（FBAR）

**逃脱 Dual-Status 的路径**：

| 方法 | 条件 |
|------|------|
| **First-Year Choice** | 新到美国 + 次年满足 SPT + 配偶愿加入 |
| **6013(g) 选举** | 非居民配偶加入 → 全年居民 |
| **延迟取得绿卡**（跨年） | 安排在 1/1 前后取得，避免年中 |
| **提前离境**（如 12/31 前） | 放弃身份在年末，下年是 NRA 全年 |

**实务：如何准备 Dual-Status Return**：

```
1. 确定身份转换日（residency termination date）
   - 绿卡：I-551 签发日 或 I-407 生效日
   - SPT：当年首个满足天数日 或 当年最后离境日 + Closer Connection

2. 分割收入：
   - 工资（W-2）：按日比例拆分
   - 利息/股息：按收到日分配
   - 资本利得：按实现日分配
   - 租金：按收款日分配

3. 分割扣除：
   - Itemized：按发生期分配
   - 401K 供款：居民期内算
   - HSA 供款：居民期内算

4. 分别计算税：
   - 居民期按 1040 规则
   - 非居民期按 1040NR 规则

5. 合并：
   - 写成一份 Dual-Status Return
   - 标注 "Dual-Status Return" 或 "Dual-Status Statement"

6. 附件：
   - Form 8843（豁免天数）
   - Form 8854（若 Expatriate）
   - Form 8833（若用协定）
   - FBAR（居民期若海外账户 > $10k）
```

**常见错误**：

- ❌ **用 Standard Deduction**（Dual-Status 禁用）
- ❌ **MFJ 申报**（除非 6013(g) 选举）
- ❌ **居民期前的海外收入也报**（应仅居民期之后）
- ❌ **忘记 Form 8843**（如是 F/J 学生豁免过）
- ❌ **跨期资本利得分配错误**（按实现日）
- ❌ **忘记 FBAR**（居民期若海外 > $10k）

**FBAR / Form 8938 在 Dual-Status 年的处理**：
- **FBAR**：全年申报（若居民期任何时点海外账户 > $10k 合计峰值）
- **Form 8938**：仅居民期申报要求
- 非居民期的账户只在转换后开的才免

**退休账户在 Dual-Status 年的处理**：
- 居民期供 401K / IRA 有效
- 非居民期不能供
- Roth Conversion 建议在居民期内完成

**Dual-Status 与 [[Exit-Tax]] 的交叉**：
- LTR 年中放弃绿卡 → Dual-Status + Exit Tax
- Form 8854 Part I-IV 附在 Dual-Status Return
- 复杂度极高，建议专业 CPA + 跨境税务律师

**规划建议**：

### 取得绿卡前
- 评估时机：年初 vs 年末（影响 Dual-Status 或全年 NRA）
- 若配偶是 RA/公民：首年选择 + MFJ 通常优
- 清理海外 PFIC

### 取得绿卡当年
- 请跨境 CPA 准备 Dual-Status Return
- 保留所有日期证据（I-551 日期）
- 评估是否走 First-Year Choice

### 放弃身份当年
- 资产估值（为 Exit Tax）
- Form 8854 合规准备
- 年末前完成 I-407（避免新税年跨度）

**费用参考**：
- Dual-Status 报税：$1,000-3,000（大公司 $3k-10k）
- 首年选择 + MFJ 配合：$1,500-4,000
- Dual-Status + Exit Tax：$5,000-15,000

## 与其他概念的关系

- [[三种身份税务差异]]：Dual-Status 是身份变更的过渡形态
- [[Substantial-Presence-Test]]：SPT 满足日是 Dual-Status 起点
- [[LTR-8年窗口]]：放弃绿卡年通常是 Dual-Status
- [[Exit-Tax]]：放弃年的 Dual-Status + Form 8854
- [[Form-8854]] / [[Form-8833]]：Dual-Status 年的常见附加表
- [[Closer-Connection-豁免]]：离境年的脱离工具
- [[FBAR]] / [[PFIC]]：居民期义务
- [[Roth-IRA]]：居民期可继续供款

## 参考来源

- [[raw_material/身份税务/绿卡vs公民vs非居民]]
