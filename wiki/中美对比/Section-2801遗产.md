---
title: Section-2801遗产
category: 中美对比
tags: [中美对比, IRC-2801, Exit-Tax, 遗产税, 赠与税, Covered-Expatriate]
source: "[[raw_material/身份税务/Exit-Tax]]"
updated: 2026-04-20
status: draft
---

## 定义

**IRC Section 2801**：Covered Expatriate（见 [[Covered-Expatriate-三测试]]）放弃身份**之后**，向**美国受益人**赠与或传承资产时，**美国受益人需缴 40% 税**。这是针对 Covered Expatriate 的"跟随一生"的税务负担，比一般外国人赠与美国人的规则严苛得多——是放弃美国身份**最容易被忽视的长期代价**。

## 核心要点

**谁交税**（反常识）：
- **不是** Covered Expatriate（给方）
- 而是 **美国受益人**（收方）
- 按 40% 平坦税率

**什么触发**：
```
Covered Expatriate 放弃身份后
  → 向美国受益人（US Person）
  → 赠与（生前） 或 遗产继承（死后）
  → 美国受益人在 Form 708 上申报并缴 40% 税
```

**"美国受益人"定义**：
- 美国公民
- 美国绿卡持有人
- 美国税务居民（SPT 居民）
- 美国境内信托
- 美国境内企业（某些情况）

**"covered gift"和"covered bequest"**：
- **Covered Gift**：Covered Expatriate 放弃后的赠与
- **Covered Bequest**：Covered Expatriate 去世后的遗产

**为什么如此严苛**（立法意图）：
- 防止 Covered Expatriate 通过"先放弃 → 再赠与子女"规避美国遗产税
- 平常外国人给美国人赠与：外国人**不交税**，美国人**不交税**（但需 Form 3520 申报 > $100k）
- Section 2801 特殊：美国人**必须交 40%**

**计算方式**：
```
应税金额 = 赠与/遗产 FMV - 年度豁免（$19,000/2026 每赠与人每受赠人）
税额 = 应税金额 × 40%

例：Covered Expatriate 父亲给美国公民儿子 $500,000 
  应税 = $500,000 - $19,000 = $481,000
  儿子须缴税 = $481,000 × 40% = $192,400
```

**年度豁免细节**：
- 每**赠与人**对每**受赠人**每年 $19,000（与一般赠与税年度豁免同步）
- 夫妻若都是 Covered Expatriate → $19k × 2 = $38k/年/受赠人
- **Lifetime Gift Tax Exemption 不适用**（一般赠与税的 $13.99M 豁免不能用于 Section 2801）

**美国受益人的义务**：
- **Form 708**：U.S. Return of Covered Expatriate Gifts and Bequests
- 收到礼物/遗产当年的税表附
- 截止日：4/15（或延期）

**通过 Domestic Trust 的绕过**（可能）：
```
Covered Expatriate → Domestic Trust（美国境内）→ 美国受益人

若信托是 US Trust → 信托本身代缴 40% 税
  → 受益人之后提款不再交（已代缴）
  → 有时可用作分期税务工具

若信托是 Foreign Trust → 受益人每次分配时仍触发 40%
```

**实际税负例子**：

### 案例 A：直接赠与
- Covered Expatriate 退休后在中国
- 每年向美国公民女儿赠 $100k（大学学费 + 生活费）
- 女儿每年须缴：($100k - $19k) × 40% = **$32,400**
- 10 年累计：**$324,000** 女儿税负

### 案例 B：遗产继承
- Covered Expatriate 去世，遗产 $5M
- 美国公民子女 2 人各继承 $2.5M
- 每人应税 = $2.5M（不适用 Lifetime Exemption）
- 每人税 = $2.5M × 40% = **$1,000,000**
- 两子女合计：**$2,000,000**

### 案例 C：给非美国受益人
- Covered Expatriate 给**中国公民父母** $1M
- 父母非 US Person → **Section 2801 不适用**
- 无税（中国端可能有其他规则）

**对家庭规划的影响**：

**负面场景**：
1. 祖父 Covered Expatriate 后给美国出生的孙子买房（$500k）→ 孙子或家长付 $192k 税
2. 父亲放弃绿卡后在美国留学的子女学费 → 子女付税
3. Covered Expatriate 去世后美国境内信托 → 信托代缴 40%

**对策**：
1. **放弃前赠与**：在放弃**前**完成大额赠与（用 Lifetime Exemption $13.99M 免税）
2. **避免 Covered 状态**：规避 [[Covered-Expatriate-三测试]] 三测试 → 无 Section 2801
3. **后代放弃 US Person 身份**：若后代打算回国发展 → 早期放弃身份 → 未来赠与无税
4. **资产传美国外**：遗产留给非美国受益人，美国受益人另行安排

**Form 708 实务**：
- **申报方**：美国受益人（不是 Covered Expatriate）
- **截止**：与 1040 同步（4/15 或延期 10/15）
- **罚款**：未报按一般赠与税罚则（5%/月最高 25%）
- **罚息**：按 IRS 欠税利率（~8%）

**Covered Expatriate 放弃后的其他持续义务**：

除 Section 2801 外，还有：
- **Form 8854 Part V**：年度申报（若延迟付 Exit Tax / 有待处理递延薪酬）
- **Form 8938**：如仍有美国来源收入需申报
- **Social Security**：已积累工分仍可领取

**受益人的 Form 708 vs Form 3520 的区别**：

| 场景 | 受益人报什么 | 税 |
|------|-------------|----|
| 非 Covered Expatriate 外国人赠 > $100k | Form 3520（信息） | **无税** |
| Covered Expatriate 赠任何金额（> $19k） | **Form 708**（应税） | **40%** |
| 非 Covered 外国人去世遗产 | Form 3520（信息） | **无税**（若无美国境内资产）|
| Covered Expatriate 去世遗产 | **Form 708**（应税） | **40%** |

**核心结论**：Covered Expatriate 身份 = **终身标签**，影响一生的跨境赠与传承。

**放弃前的"一次性大赠与"策略**：
- 使用 2026 年 **Lifetime Gift Tax Exemption $13.99M/人**
- 放弃**前**完成大额赠与给美国子女
- 免税（Lifetime Exemption 覆盖）
- 放弃**后**再无大额赠与空间

> ⚠️ **时机重要**：必须在**仍是美国人**时做赠与。放弃当天起 Section 2801 生效。

**对"长期双居"的影响**：
- 很多家庭希望父母退休回中国、子女留美
- 若父母是 LTR 且放弃绿卡 → Covered 则未来给子女资金**受 40% 税冲击**
- 对策：
  - 父母早期（< 8 年 LTR）放弃
  - 或父母不放弃绿卡，仅做 Closer Connection 声明
  - 或父母放弃前大额赠与子女

**与 [[双重居民]] 的互动**：
- 若父母用税收协定 Tie-Breaker 宣告中国居民 → 该年起可能算放弃绿卡
- 若是 LTR → 触发 Exit Tax + 未来 Section 2801
- 因此 Tie-Breaker 前必须评估 LTR 状态

## 与其他概念的关系

- [[Exit-Tax]]：Section 2801 是 Exit Tax 的"持续税"
- [[Covered-Expatriate-三测试]]：只有 Covered Expatriate 适用 Section 2801
- [[Form-8854]]：放弃时的申报启动 Section 2801
- [[LTR-8年窗口]]：提前放弃（< 8 年）可避开整套 Section 2801 规则
- [[FBAR]]：Section 2801 不影响 FBAR，FBAR 仍独立适用
- [[双重居民]]：Tie-Breaker 可能触发放弃，进而启动 Section 2801
- [[绿卡vs公民vs非居民]]：身份决定是否可能成为 Covered Expatriate
- [[Revocable-Living-Trust]]：Trust 结构对 Section 2801 影响需律师设计

## 参考来源

- [[raw_material/身份税务/Exit-Tax]]
