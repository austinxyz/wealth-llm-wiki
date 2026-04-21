# FATCA（境外账户税务合规法案）

**收集日期：** 2026-04-16

## 来源

- [IRS: Foreign Account Tax Compliance Act (FATCA)](https://www.irs.gov/businesses/corporations/foreign-account-tax-compliance-act-fatca)（官方）
- [IRS: Summary of FATCA reporting for U.S taxpayers](https://www.irs.gov/businesses/corporations/summary-of-fatca-reporting-for-us-taxpayers)（官方）
- [IRS: FATCA information for individuals](https://www.irs.gov/businesses/corporations/fatca-information-for-individuals)（官方）
- [US Treasury: Foreign Account Tax Compliance Act](https://home.treasury.gov/policy-issues/tax-policy/foreign-account-tax-compliance-act)（官方）
- [IRS: Summary of key FATCA provisions](https://www.irs.gov/businesses/corporations/summary-of-key-fatca-provisions)（官方）
- [Greenback: What Is FATCA? Form 8938 Filing Requirements & Thresholds](https://www.greenbacktaxservices.com/knowledge-center/fatca/)
- [Bright Tax: FATCA and CRS Reporting](https://brighttax.com/blog/fatca-and-crs-reporting/)
- [Wikipedia: Foreign Account Tax Compliance Act](https://en.wikipedia.org/wiki/Foreign_Account_Tax_Compliance_Act)

## 核心概念

**FATCA（2010 年法案）** 是**美国单方面要求全球金融机构举报美国人账户**的法律：

- 美国以**美国市场准入**（30% 预扣税）为筹码
- 强迫境外金融机构（FFI）识别美国客户并向 IRS 报告
- 形成了事实上的全球金融信息网

**对你的影响**：即使你不主动申报 FBAR / 8938，**银行已经把你的数据送到 IRS 了**。不申报 = 高概率被抓。

## 两套义务

### 1. 机构义务（FFI）

外国金融机构必须：
- 识别所有美国客户
- 收集美国人身份信息（SSN/ITIN）
- 每年向本国政府或 IRS 报告美国账户
- 否则：美国对该 FFI 接收美国款项预扣 30%

### 2. 个人义务（Form 8938）

美国人必须按 [[Form-8938]] 报告境外金融资产（详见另一篇文档）。

## 全球覆盖

- **113+ 国家** 签署了 IGA（Intergovernmental Agreement）
- 几乎所有主要金融中心：英、德、加、澳、新、港、瑞、日
- **中国**：Model 1 IGA 的事实执行（正式协议未签，但中国大银行基本合规）

## IGA 模型

### Model 1（最常用）

- FFI 报给本国政府
- 本国政府转报 IRS
- 双向：IRS 也向该国报告该国居民在美账户
- 中国、大多数欧洲国家采用

### Model 2

- FFI 直接向 IRS 报告（客户同意基础上）
- 瑞士、日本采用

## 中国侧执行情况

### 实际现状

- 中国四大银行、招商、平安等**全部**识别美国人
- 开户时必须填 W-9 / W-8 表格声明美国身份
- **不如实告知美国身份** → 刑事犯罪（银行可能起诉）
- 大银行每年向中国银保监报告美国客户，再传送 IRS

### 你可能遇到的情况

- 美国居民去中国开户：银行会拒绝或仅限特定产品
- 已开账户突然被要求补交 W-9
- 某些投资产品（理财、基金）对美国人关闭
- 股票账户交易受限

## IRS 信息比对

IRS 收到 FATCA 数据后会**匹配你的税表**：

```
FATCA 报告金额 vs Form 8938 申报金额
          ↓
     不匹配 → IRS 审计信
```

**典型场景**：
- 工商银行向 IRS 报告你有 $80k 账户
- 你 Form 8938 只填了 $50k 或没填
- → IRS 发信要求解释
- → 最坏情况：故意隐瞒罚款 + 补税

## 与 FBAR 的关系

**FATCA + FBAR = 双重监管网**：

| 维度 | FBAR | FATCA / 8938 |
|------|------|-------------|
| 立法背景 | 1970 Bank Secrecy Act | 2010 HIRE Act |
| 管辖机构 | FinCEN | IRS |
| 机构端报告 | 无（仅个人报） | **FFI 主动报给 IRS** |
| 个人报告 | FinCEN 114 | Form 8938（与税表一起）|
| 门槛 | $10k | $50k-$600k（见 [[Form-8938]]）|
| 罚款 | 极重 | 较轻 |

**实务**：
- 大部分美国人在中国有账户 → **两者都要报**
- FATCA 让 IRS **主动知道** 你的账户存在
- FBAR 是你**主动告诉** FinCEN 账户详情
- 不报 = FATCA 数据 vs 缺失 FBAR = 必被抓

## 对双边家庭的实务影响

### 1. 开户越来越难

- 中国银行对美国人服务萎缩
- 部分理财产品（私募、信托）完全关闭
- 新加坡、香港也日益严格

### 2. 信息透明度高

- 中国账户任何大额变动 IRS 都知道
- 资金跨境汇款特别敏感
- 无"秘密账户"可能性

### 3. 合规成本

- 每年 FBAR + Form 8938 申报
- 跨境理财收入 Form 8621（PFIC）
- 专业报税费用 $500-$2,000（单身简单）→ $3,000+（复杂）

### 4. 战略建议

- **长期美国居住者**：不建议维持大额中国金融资产
- **可能回国者**：资产结构要提前规划放弃绿卡的税务后果
- **双重保留**：意识到合规成本，接受或简化

## FATCA vs CRS 对比

**CRS（Common Reporting Standard）** 是 OECD 版的 FATCA，**100+ 国家**互相交换。

| 维度 | FATCA | CRS |
|------|-------|-----|
| 发起方 | 美国单方 | OECD 多边 |
| 目标 | 美国税务居民 | 所有参与国居民 |
| 美国是否参与 | **是（接收方）** | **不参与**（发送方） |
| 中国参与 | 事实执行 | 2018 起正式执行 |

**关键**：美国不参与 CRS → 美国**不会**把外国人（包括中国人）在美国的账户自动报告给中国。这使得**美国成为"外国人"的税务天堂**，但反过来中国人在美国的账户对中国税务是"黑盒"。

⚠️ 注意：中国 2024 年起加强对海外资产审查，这个"黑盒"正在被削弱。

## 放弃美国身份的 FATCA 影响

- 放弃公民 / 放弃绿卡 → 填 Form 8854
- 放弃日之后境外账户不再被 FATCA 追踪
- 但 **Exit Tax**（离境税）可能触发

## 与其他概念的关系

- [[FBAR]]：相关个人申报义务
- [[Form-8938]]：FATCA 对个人的具体申报
- [[PFIC]]：FATCA 识别出的中国基金的税务处理
- [[双边资产策略]]：FATCA 是跨境资产管理的核心约束
- [[中美税收协定]]：FATCA 并不废除双重征税，但提供信息基础

## 待提炼为 wiki 条目

**已提炼（2026-04-20）**：

- [x] `wiki/中美对比/FATCA.md` — 两套义务 + IGA 模型 + IRS 比对机制 + vs FBAR 对比
- [x] `wiki/中美对比/FATCA-vs-CRS.md` — 美国不参与 CRS + 双边合规义务 + 美国"天堂"策略失效
- [x] `wiki/中美对比/中国银行开户限制.md` — 四大行态度 + 关闭产品清单 + 开户策略 + 雷区

**MOC 更新**：
- [x] `wiki/中美对比/00-MOC-中美对比.md` 加入 3 条
