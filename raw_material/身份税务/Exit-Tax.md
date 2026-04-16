# Exit Tax（离境税 / 放弃身份税）

**收集日期：** 2026-04-16

## 来源

- [IRS: Expatriation tax](https://www.irs.gov/individuals/international-taxpayers/expatriation-tax)（官方）
- [IRS: Instructions for Form 8854 (2025)](https://www.irs.gov/instructions/i8854)（官方）
- [IRS: About Form 8854](https://www.irs.gov/forms-pubs/about-form-8854)（官方）
- [Greenback: Form 8854 Exit Tax When Renouncing](https://www.greenbacktaxservices.com/knowledge-center/form-8854/)
- [Taxes for Expats: US Exit Tax 2026](https://www.taxesforexpats.com/articles/expatriation/us-exit-tax.html)
- [Verni Tax Law: Form 8854 Explained 2026](https://vernitaxlaw.com/form-8854-explained-exit-tax-guide-2026/)
- [Taxes for Expats: Exit Tax for Green Card Holders - 8 Years](https://www.taxesforexpats.com/articles/expatriation/green-card-exit-tax-8-years.html)
- [1040 Abroad: IRS Form 8854 Requirements](https://1040abroad.com/blog/form-8854-the-final-step-in-leaving-u-s-tax-system/)
- [Expat US Tax: Form 8854](https://www.expatustax.com/form-8854/)

## 核心概念

**Exit Tax（IRC Section 877A）**：美国公民放弃国籍 或 Long-Term Resident（LTR）放弃绿卡时，IRS 视为**"假售"全部资产**，对累积未实现资本利得征税。

**目的**：防止富裕阶层用"跑路"逃避美国税。

## 触发条件

### 第 1 步：是否算 Expatriate

#### 公民
- 正式放弃国籍（US Department of State）

#### 绿卡持有人
- **Long-Term Resident（LTR）**：任一 15 年窗口内持有**有效绿卡 ≥ 8 年**
- 放弃方式：
  - 主动放弃（I-407）
  - USCIS / Immigration Judge 判定失效
  - Tie-Breaker 宣称外国居民（见 [[双重居民]]）

**关键**：<8 年绿卡者**不算 LTR**，放弃无 Exit Tax。

#### 8 年怎么算？

- **8 个完整税年**
- 不要求连续
- 任何一年持有绿卡 ≥ 1 天 = 该年计入
- 一生中在 **任意 15 年窗口内**累计 8 年触发

### 第 2 步：是否算 Covered Expatriate

即使 Expatriate，只有满足**三项之一**才是 **Covered Expatriate**（触发 Exit Tax）：

#### 测试 1：净资产 ≥ $2,000,000

- 放弃日全球净资产（NET）
- 不随通胀调整
- 2008 年起固定 $2M

#### 测试 2：5 年平均所得税 ≥ 阈值

- 放弃前 5 年平均**净所得税**（非总收入）
- 2025 阈值：**$206,000**（每年通胀调整，2026 预计略升）
- 多数中产不触发

#### 测试 3：不合规认证失败

- 无法证明过去 5 年**完全税务合规**
- 包括 FBAR、Form 8938、所有 1040 按时提交
- **即使资产/税额不高**，此项也可能触发

### 第 3 步：豁免金额（Exclusion Amount）

Covered Expatriate 有**每人豁免**：

- **2026：$910,000**（通胀调整）
- 夫妻各自计算

## 计算方式（Mark-to-Market）

### 基本公式

```
Exit Tax = (全球资产假售利得 - $910,000 豁免) × 适用资本利得税率
```

### "假售"机制

- 放弃日前一天 → IRS 视为把**所有资产**按 **FMV** 卖出
- 计算每个资产的**假设资本利得**
- 合计资本利得 - $910,000 豁免 = 应税 Exit Tax 基础
- 按长期资本利得税率（0/15/20%）+ NIIT 3.8% + 州税

### 示例

- LTR 绿卡 9 年，放弃绿卡
- 全球净资产 $3,500,000
- 基础成本 $1,500,000
- 未实现利得 = $2,000,000
- 减豁免 = $2,000,000 - $910,000 = **$1,090,000 应税**
- 税额（20% + 3.8% NIIT）≈ **$260,000**

## 特殊资产处理

### 递延薪酬（Deferred Compensation）

- **合格递延薪酬**（如 401K、IRA）：30% 预扣于未来分配时
- **非合格递延**：视为假售日分配，全额当年应税

### 退休账户

- Traditional IRA / 401K：视为在放弃日**全额分配**（普通所得税率，可能 30-37%）
- Roth IRA：视为分配，但如已满足免税条件则免

### 信托资产

- 可撤销信托：按委托人资产处理
- 不可撤销信托：特殊规则，可能有不利后果

### 房产

- 美国房产：假售，未来实际卖出按新 basis
- 外国房产：同样假售

## 延迟付款选择

可选择**延迟支付 Exit Tax**：

- 条件：
  - 签订不可撤销"延迟税务协议"
  - 提供充足**担保**（banking LC 或其他）
  - 每年支付 **利息**（按 IRS 欠税利率，~8%/年）
- 直到资产实际处置时支付税款
- 适合：资产为流动性低的房产 / 企业股权

## Form 8854 申报要求

### 时限

放弃身份当年的税表截止日期前（4/15 + 延期至 10/15）。

### 内容

- Part I：基本信息
- Part II：资产清单 + FMV（假售利得）
- Part III：递延薪酬
- Part IV：合规认证（测试 3）

### 罚款

- 未按时提交：**$10,000**
- 错误陈述：刑事处罚可能

## 放弃后的持续义务

Covered Expatriate 放弃后仍有部分义务：

### Inheritance Tax（遗产税）—特殊规则

**IRC Section 2801**：
- Covered Expatriate 未来赠与或去世给**美国受益人**的资产
- 美国受益人需缴 **40%** 遗产/赠与税
- 比一般外国人赠与美国人严苛

### Form 8854 年度申报

- 放弃后**每年**提交 Form 8854 Part V（如某些条件持续）
- 特定情景持续多年

## 放弃身份的其他后果

### 社保（Social Security）

- 已积累工分 → 退休后仍可领取
- 但在海外（非美国协定国家）可能无法收到美国账户
- 美国公民去中国：SS 可以通过香港账户收

### Medicare

- 65 岁后丧失 → **无 Medicare 覆盖海外医疗**（原本也不覆盖）
- 回美治疗需自费

### 进入美国

- 可能需要签证（非免签国）
- 部分情况限制入境

## 战略考量

### 何时考虑放弃绿卡

- 确定不再长期在美国居住
- 全球资产 > $2M（触发 Covered Expatriate）
- 每年合规成本 > 放弃后的税务节省
- 预计未来生活在中国

### 何时放弃时机最优

- **净资产低点**：市场下跌时放弃 → 假售利得低 → Exit Tax 少
- **低税收入年**：避免触发测试 2
- **8 年前放弃**：不算 LTR，完全免 Exit Tax

### 8 年窗口管理

如持有绿卡 6-7 年，可考虑：
- 提前放弃（避免触发 LTR）
- 或确定保留超过 8 年 + 接受 LTR 规则

**计算示例**：
- 2018 取得绿卡
- 2018-2025 = 8 个税年（含 2018 年，即使只持 1 天）
- 2025 年放弃 = LTR，触发 Exit Tax 风险
- 2024 年放弃 = 7 年，**不是 LTR**，避免 Exit Tax

### 规避 "Covered" 状态

如果想放弃但不想成为 Covered：
- 降低净资产 < $2M（赠与、消费、慈善）
- 降低 5 年平均税额（降低收入）
- 确保完全税务合规（近 5 年 1040 + FBAR + 8938 完美提交）

**最难的是测试 3**：任何小瑕疵（忘了一年 FBAR）都可能导致认证失败。

## 放弃公民 vs 绿卡

| 维度 | 放弃公民 | 放弃绿卡 |
|------|---------|---------|
| 8 年门槛 | 无（即触发）| LTR 规则 |
| 办理方式 | US Embassy 宣誓 | I-407 |
| 办理费用 | **$2,350**（固定，全球最贵之一） | 免费 |
| 回美入境 | 可能需签证 | 可能需签证 |
| 配偶/子女 | 独立决定 | 独立决定 |
| 未来继承美国资产给美国人 | 40% 税（IRC 2801） | 40% 税 |

## 实务案例

### 案例 A：避免 LTR

- 2020 年取得绿卡
- 2025 年决定不长住美国
- **2027 年之前放弃**（7 个税年）= 非 LTR = 无 Exit Tax
- 仅需处理合规问题

### 案例 B：高净值 LTR

- 2015 年取得绿卡（LTR 已触发）
- 净资产 $5M
- 未来计划定居中国
- 放弃时：Exit Tax 估算 $800k-$1M
- 策略：
  - 放弃前赠与子女降低资产（每年 $19k 免税 × 多年）
  - 捐赠 [[DAF]] 降低资产
  - 选市场低位放弃

### 案例 C：不够 Covered

- LTR + 净资产 $1.5M
- 5 年平均税 $150k
- 5 年合规完美
- **Not Covered** → Exit Tax $0（仅申报 Form 8854）

## 与其他概念的关系

- [[绿卡vs公民vs非居民]]：身份决定是否 LTR
- [[双重居民]]：Tie-Breaker 可能触发 Exit Tax
- [[DAF-Donor-Advised-Fund]]：降低资产的合法手段
- [[退休回国税务]]：放弃 vs 不放弃的长期决策
- [[Foreign-Tax-Credit]]：未放弃时的应对工具

## 待提炼为 wiki 条目

- [ ] `wiki/中美对比/Exit-Tax.md`
- [ ] `wiki/中美对比/Form-8854.md`
- [ ] `wiki/中美对比/LTR-8年窗口.md`
- [ ] `wiki/中美对比/Covered-Expatriate-三测试.md`
- [ ] `wiki/中美对比/Section-2801遗产.md`
