---
title: FTC简化规则
category: 中美对比
tags: [中美对比, FTC, 简化规则, 1099-DIV, 小额抵免]
source: "[[raw_material/跨境税务/Foreign-Tax-Credit]]"
updated: 2026-04-20
status: draft
---

## 定义

**FTC 简化规则（$300 / $600 De Minimis Election）**：外国税合计低于 **$300（Single/MFS）或 $600（MFJ）** 且全部来自 **Passive Income + 1099-DIV/INT** 时，可**免填 Form 1116**，直接在 1040 Schedule 3 Line 1 抵免。适合美国券商持有国际 ETF（VXUS / VEA / VWO）的大多数普通投资者。

## 核心要点

**四个必要条件**（全部满足才能简化）：

1. **所有外国税来自 Passive Income**
   - 利息、分红、资本利得
   - 不能含工资、自雇收入（General category）
   
2. **合计外国税**：
   - Single / MFS / HoH：**< $300**
   - MFJ：**< $600**
   
3. **所有外国税来自合格 1099 表**：
   - 1099-DIV（分红）
   - 1099-INT（利息）
   - 不能来自海外账户自行申报
   
4. **做 Election**（在 1040 上标注）

### 何时适用（最常见场景）

**场景 A：美国券商持有国际 ETF**（最典型）
```
Fidelity / Vanguard / Schwab 账户
持有：
  - VXUS（Total International Stock）
  - VEA（Developed Markets）
  - VWO（Emerging Markets）
  - MCHI（China）
  - IEMG（Emerging Markets）

年终 1099-DIV 有 "Foreign Tax Paid" 栏：$250
  ↓
MFJ + < $600 + 全 Passive + 1099-DIV
  ↓
直接在 1040 Schedule 3 Line 1 抵免 $250
  **免 Form 1116** ⭐
```

**场景 B：国际债券 ETF**
```
BNDX（Total International Bond）
1099-INT / DIV 中的 Foreign Tax：$150
→ 简化直接抵免
```

**场景 C：大公司股票含海外业务**
```
外国公司 ADR（TSMC、Novartis）
1099-DIV 的 Foreign Tax：$80
→ 简化
```

### 不适用的场景

**场景 A：中国银行账户直接持有**
```
中国招商银行利息 $1,500
中国预扣税 10% = $150

问题：无 1099-INT（中国银行不发美国税表）
→ **必须用 Form 1116**
```

**场景 B：中国房租收入**
```
中国房产租金 $12,000
中国个人所得税 $1,200

问题：
  - 是房租（Passive），但需 Schedule E
  - 无 1099 表
  - 金额 > $600（MFJ）
→ **必须 Form 1116**
```

**场景 C：中国工资**
```
中国派驻 L-1 工资 $80,000
中国税 $8,000

问题：
  - 工资是 General category（非 Passive）
  - 金额远超 $600
→ **必须 Form 1116（General Category）**
```

**场景 D：多 category 混合**
```
VXUS 被动分红的外国税：$200
中国工资的外国税：$8,000

问题：混合 Passive + General
→ **每个 category 独立 Form 1116**
→ 无法简化
```

### 简化的代价（权衡）

**优点**：
- ✅ 无需 Form 1116（省专业服务费 $200-500）
- ✅ 直接 1040 Line 抵免
- ✅ 税务软件自动处理（1099 导入）

**缺点**：
- ❌ **放弃结转权**（carryover）
- ❌ 放弃精确限制计算
- ❌ 若限制公式允许更多抵免 → **损失部分抵免**
- ❌ 未来高收入年无结转可用

**实务判断**：
```
外国税 < $300/$600：
  限制公式结果通常也是全额抵免
  → 简化 vs Form 1116 差异 < $50
  → 简化省时省钱更划算

外国税 = $600 临界：
  MFJ 时可能略超门槛
  → 做 Form 1116 更稳妥

外国税 > $600：
  强制 Form 1116
```

### 做 Election 的机制

**在税务软件中**：
- TurboTax / H&R Block：自动检测（1099-DIV 导入）
- 提示"是否做简化抵免"
- 点击"是" → 填入 $ 金额 → 完成

**手动填写**（纸质）：
- 1040 Schedule 3 Line 1
- 写入外国税金额
- 无需附件

**注意事项**：
- 每年独立判定（条件每年可能变化）
- 每年都要重新做 Election

### 常见错误

**错误 1：误以为 "$300 per fund"**
- 是**合计所有基金**的外国税
- 10 只国际 ETF 合计 $500 → 仍可简化（MFJ）

**错误 2：忘记是"税"不是"收入"**
- "Foreign Tax Paid" 不是"Foreign Source Income"
- 前者是抵免金额（$300 门槛）
- 后者可能远大（例如 $5,000 外国源收入，外国税率 10% → $500 税）

**错误 3：中国银行直接账户误以为简化**
- 没有 1099-INT → 不符合简化条件
- 即使金额 < $600 也必须 Form 1116

**错误 4：放弃结转后悔**
- 简化不能结转
- 今年多交几百 → 未来某年超额抵免机会失去
- **但对 $600 以下通常无影响**（限制公式大多允许全抵）

### 实际应用决策树

```
Q1：所有外国税都来自 1099-DIV / 1099-INT 吗？
  否 → 跳过简化，用 Form 1116
  是 → Q2

Q2：合计 ≤ $300（Single）或 $600（MFJ）？
  否 → 用 Form 1116
  是 → Q3

Q3：全是 Passive category？
  否 → Form 1116（按 category 分）
  是 → **✅ 用简化**

Q4：未来是否可能有大额结转需求？
  否 → 简化 ✅
  是 → 考虑 Form 1116 保留结转权
```

### 实务场景推荐

**推荐简化的情况**：
- 纯被动投资组合（VXUS 等）
- 家庭金融资产 < $500k
- 外国税 < $300 / $600
- 不想支付专业服务费

**推荐 Form 1116 的情况**：
- 外国税 > 门槛
- 多 category 混合
- 有结转余额需追踪
- 有复杂海外收入结构
- 资产 > $1M（复杂度自然需专业）

### 与 1099-DIV 的对应栏位

**1099-DIV 解读**（Vanguard 样例）：
```
Box 1a：总分红（Ordinary Dividends）= $5,000
Box 1b：合格分红（Qualified Dividends）= $4,500
Box 6：外国税已缴（Foreign Tax Paid）= $250 ⭐
Box 7：外国源收入（Foreign Source Income）= $2,000
```

**简化时只关注 Box 6**：
- $250 < $600 MFJ
- 直接抵免 $250

**需要 Box 7** 的情况：
- 做 Form 1116 限制计算（外国源占比）
- 简化时不需要

### 简化 vs 完整 Form 1116 的数字对比

**假设**：VXUS 外国税 $250，MFJ 美国居民，其他均美国源

**简化（De Minimis）**：
```
1040 Schedule 3 Line 1：$250 FTC
抵美国税 $250
工作量：5 分钟
```

**完整 Form 1116**：
```
Form 1116 Passive Category：
  美国税总额：$20,000
  外国源收入（Box 7）：$2,000
  全球应税：$80,000
  限制 = $20,000 × ($2,000 / $80,000) = $500
  实际抵扣 = min($250, $500) = $250

结果：同样 $250 抵免，但有 $250 结转余额（上限 $500 - 实际 $250）
工作量：30-60 分钟
```

**结论**：$250 抵免相同，简化省时，但失去 $250 结转（几乎无价值若未来也是小额）。

### 与 Backdoor / Mega Backdoor 等策略的互动

**与 Roth Conversion 的联动**：
- Roth Conversion 增加 AGI
- 可能推高美国税 → FTC 限制上限相应增加
- 简化下无感（< $600 几乎总全抵）
- Form 1116 下需重算

**与 EBAY 减仓计划的联动**：
- 2027 卖 EBAY 实现大额资本利得
- 不是外国源（美国公司）
- 不影响 FTC 简化判定
- 但提高美国税 → FTC 限制上限增加

## 与其他概念的关系

- [[Foreign-Tax-Credit]]：主条目
- [[FTC-vs-FEIE选择]]：两大工具的选择
- [[资本利得税]]：1099-DIV 的分红部分税率
- [[合格分红]]：Qualified Dividends 的条件
- [[Asset-Location]]：在美国券商买国际 ETF 是 FTC 简化的前提
- [[ETF总览]]：推荐的国际 ETF 清单（VXUS、VEA、VWO、MCHI）
- [[Backdoor-Roth-IRA]]：Roth Conversion 可能影响 FTC 计算

## 参考来源

- [[raw_material/跨境税务/Foreign-Tax-Credit]]
