# 83(b) Election（83(b) 选举 / 提前纳税选择）

**收集日期：** 2026-04-16

## 来源

- [Carta: 83(b) Election Explained Tax Benefits](https://carta.com/learn/equity/stock-options/taxes/83b-election/)
- [The Startup Law Blog: 83(b) Elections & Early Exercise Guide 2026](https://www.thestartuplawblog.com/blog/83b-election-guide/)
- [Citizens Private Bank: Reduce Taxes with 83(b) Election](https://www.citizensbank.com/private-banking/insights/83b-election-and-early-exercise.aspx)
- [Cake Equity: 83(b) Election Explained](https://www.cakeequity.com/guides/83b-election)
- [Darrow Wealth Management: 83(b) Election for Stock Options](https://darrowwealthmanagement.com/blog/83b-election-restricted-stock-options/)
- [SmartAsset: Section 83(b) Election Deadline Examples](https://smartasset.com/taxes/83b-election)
- [Chase: Stock-Based Compensation and the Section 83(b) Election](https://www.chase.com/personal/investments/learning-and-insights/article/stock-based-compensation-and-the-section-83b-election)
- [Compound Manual: Early Exercising and 83(b) Elections](https://manual.compoundplanning.com/chapters/early-exercising-and-83-b-elections)
- [Cooley GO: Why Should You File a Section 83(b) election?](https://www.cooleygo.com/what-is-a-section-83b-election/)
- [Creative Planning: 83(b) Election Impact](https://creativeplanning.com/insights/investment/83b-election-impact/)

## 核心概念

**83(b) Election = 让 IRS "视作今天收到全部股票" 的税务选择**

### 默认规则（不做 83(b)）

Restricted Stock / Early-Exercised Options 按 **vesting 时** 的 FMV 作为普通所得分期征税。

**问题**：
- 每个 vesting date 都是应税事件
- 如股价上涨 → 每次都按更高价缴税
- 累计税负巨大

### 83(b) 规则（做了选择）

**全部股票在 Grant / Early Exercise 当日按 FMV 征税**：
- 一次性征税 → 锁定成本基础
- 未来增值全部按**资本利得**（而非普通所得）
- 持有期从 Grant / Exercise 日开始计算 → 更早满足长期资本利得

## ⚠️ 30 天死线（No Cure）

**必须在 Grant / Exercise 日 30 天内**：
- 邮寄 83(b) 选举表给 **IRS 服务中心**（按你居住州指定）
- **Postmark 日期算作申报日**
- 同时抄送一份给**雇主**
- 报税时附 Form 1040 副本

⚠️ **过期无救**：
- IRS **绝不受理晚报**
- 无 "合理理由" 豁免
- 法院拒绝所有展期请求
- 如错过 → 永远失去 83(b) 选择

## 适用情景

### ✅ 适用
- **Restricted Stock Award / Purchase**（RSA，不是 RSU）
- **Early Exercise of Unvested Stock Options**（提前行权未 vest 期权）
- 必须是 **subject to vesting**（有风险被回收）
- 有实际"购买价"（可能是 $0 或低 Strike）

### ❌ 不适用
- **RSU**（Restricted Stock Units）：83(b) 对 RSU **无效**（立法已明确）
- **普通 ISO / NSO**（非 Early Exercise）：vest 后才能 exercise → 已无"vesting 风险"
- **未购买的股票**（仅 Grant 未 pay）

## 关键数学：何时值得做

### 公式

```
83(b) 划算性 = (未来 FMV × 普通所得税率)
              - (当前 FMV × 普通所得税率)
              - (未来增值 × 长期资本利得税率)
```

简化：如果你相信 FMV 会**显著上涨**，**做 83(b) 省很多**。

### 例 1：Startup 创始人（最经典场景）

- Grant 时 FMV 接近 $0（刚成立的 startup）
- 100,000 股限制性股票，Strike $0.001
- 4 年 vest
- **不做 83(b)**：
  - Year 1：25,000 股 × (Year 1 FMV) = 若 $10/股 → $250,000 普通所得
  - Year 2：25,000 股 × $20 = $500,000
  - Year 3：25,000 股 × $50 = $1,250,000
  - Year 4：25,000 股 × $100 = $2,500,000
  - **总普通所得 $4,500,000 × 37% ≈ $1.66M 税**
- **做 83(b)**：
  - 现在：100,000 × $0.001 = $100 → $37 税
  - 4 年后卖出 $100/股 = $10M → 资本利得 $10M - $100 ≈ $10M × 20% = **$2M 长期资本利得税**
  - **总税约 $2M**（但如持有不卖，每年无税）

**83(b) 省税 $1.66M - $2M × 节税部分 = $500k+**

### 例 2：Late Exercise ISO（Bargain 已大）

- Strike $10，exercise 日 FMV $100
- Bargain Element 大 → Early Exercise + 83(b) 现在做**AMT 大**
- 不如普通 ISO 持有 vesting 到期
- **83(b) 主要价值在 Low FMV 时机**

### 例 3：公司失败场景

- 今天 83(b) 申报 × $100k FMV → 交 $37k 税
- 2 年后公司倒闭 → 股票归零
- **$37k 税 + $100k 本金损失**
- **83(b) 是风险** —— 如果失败，多付的税**不能退回**（仅可作为**资本损失** $3,000/年结转）

## 什么时候做 83(b)

### ✅ 强烈建议做

- **Very Early Stage Startup**：FMV 几乎 $0
- **Founders**：获得 common stock 时
- **Pre-seed / Seed Employees**：409A 估值极低
- **Early Exercise** + 公司基本面强

### ⚠️ 谨慎考虑

- **Series A+ Startup**：FMV 已经不低
- **不确定公司成败**：风险太大

### ❌ 不要做

- **Late Stage Startup**（FMV 高）
- **RSU**（无效）
- **Public Company**（stock vest 后立即可卖 → 83(b) 无意义）
- **现金紧张**：当年付不起税
- **即将离职**：未 vest 部分被回收 → 白交税

## 申报要点

### 表格要求（无官方 Form）

IRS 提供 **Rev. Proc. 2012-29** 建议格式，主要包含：

1. 纳税人姓名、SSN、地址
2. 受赠财产描述（如 "100,000 shares of common stock of XYZ Corp"）
3. 受赠日期
4. 受赠日 FMV
5. 所支付金额（如 Strike × 股数）
6. 受赠时是否 vesting（答"是"）
7. 纳税人签名 + 日期

### 邮寄要点

- **Certified Mail with Return Receipt**（必须保留邮戳凭证）
- IRS 地址按居住州（见 Rev. Proc. 2012-29 或公司 HR 提供）
- **抄送雇主** HR
- **保留原件** 至少 10 年

### 同年报税附件

- 报税时附**Form 1040 副本**
- 在 Schedule 1 Line 8 列出 "83(b) election income"

## 常见错误

### 错误 1：83(b) for RSU
**RSU 没有 "vesting 风险下受赠"** 的法律基础 → 83(b) **无效**。填了也没用（但 IRS 不会主动告诉你）。

### 错误 2：过了 30 天才想起来
**无救。** 唯一办法：和公司 HR 商量，如可能"重新授予"股票（但公司通常不配合）。

### 错误 3：没有邮戳证明
IRS 质询时无法证明 → 视为未申报。
**Certified Mail + Return Receipt** 是基本功。

### 错误 4：忘了 FMV 基础
Grant 日的 FMV 决定当年应税。Startup 常有 **409A Valuation** 可参考，但有时公司自己算错或未更新。

### 错误 5：未在税表上报告
即使提交了 83(b) 表格给 IRS，**当年税表必须报告相应收入**。否则可能触发审计。

### 错误 6：忘了配偶签字
MFJ 情况下，很多 83(b) 表格要求配偶签字。缺失可能无效。

## 离职 / 公司被收购后

### 已 83(b) + 持股
- 股票归你所有
- 不受离职影响（vest 已假定加速）
- 未来卖出按长期资本利得

### 已 83(b) + 未 vest 被回收
- 股票归公司
- 已交的税**不退**
- 只能作为资本损失（$3k/年）

### 公司被收购
- Cash-out：按 Sale Price - 83(b) 时 FMV = 资本利得
- Stock-for-Stock：通常免税 rollover

## 加州税务考量

加州也承认 83(b)，但按加州州税税率课税。同上策略成立。

## 与其他概念的关系

- [[RSU]]：不可做 83(b)
- [[ISO-vs-NSO]]：Early Exercise 时常配合 83(b)
- [[AMT]]：83(b) 可以规避 ISO 的 AMT 问题
- [[税损收割]]：83(b) 失败时的损失处理

## 待提炼为 wiki 条目

- [ ] `wiki/股权激励/83(b)-Election.md`
- [ ] `wiki/股权激励/Early-Exercise.md`
- [ ] `wiki/股权激励/83(b)-Startup-Founder.md`
- [ ] `wiki/税务策略/30天死线.md`
