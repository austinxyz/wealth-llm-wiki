---
title: PFIC
category: 中美对比
tags: [PFIC, 中国基金, 境外基金, 税务地雷, Form-8621, 惩罚性税率]
source: "[[raw_material/跨境税务/PFIC]]"
updated: 2026-04-16
status: draft
---

# PFIC（Passive Foreign Investment Company）

## 定义

PFIC 是美国税法对境外被动投资公司的"惩罚性"规定，目的是阻止美国人通过外国基金逃税。

**定义**：外国公司满足任一即为 PFIC：
- **Income Test**：≥75% 收入来自被动收入（利息、分红、资本利得）
- **Asset Test**：≥50% 资产为被动资产

**实际影响**：几乎所有非美国公募基金、ETF、单位信托（包括中国天弘基金、余额宝、中国指数 ETF、香港互认基金）都是 PFIC。

> **核心警告：在美国居住的中国人持有中国公募基金 → 自动触发 PFIC → 有效税率 50-80%，合规成本极高。美国人不应持有中国公募基金。**

## 核心要点

### 三种税务选择

#### 1. Default（Excess Distribution）— 最糟，不做选择则默认

- 超过前 3 年平均值 125% 的分红 = "Excess Distribution"
- 卖出时资本利得也被视为 Excess Distribution
- 分摊到**持有全部年数**，每年部分按**当年最高普通所得税率（37%）**课税
- 加上 IRS 欠税利率复利罚款（~8%/年）
- **总有效税率可达 50-80%**

#### 2. Mark-to-Market（MTM）— 较温和，仅限可交易基金

- 每年按市价标记，增值按普通所得课税（无长期优惠）
- 比 Default 好，但仍无法享受资本利得优惠

#### 3. QEF Election — 最优但几乎不可行

- 需要基金提供年度 PFIC 报表（中国基金几乎不提供）
- 实际操作极困难

### 税务对比：中国基金 vs 美国 ETF

**假设**：$140k（约 ¥1,000,000）持有 5 年，资本利得 $70,000

| 方案 | 税负 |
|------|------|
| 中国基金 Default | **$40,000+（约 60%）** |
| 中国基金 MTM | 约 25-35% 持续 |
| 美国 ETF（长期资本利得） | **$12,000-$17,000（~20%）** |

**差距 $25,000+**，仅 $70k 利得。

### Form 8621 申报义务

- 持有 PFIC 须**每年每个账户各填一份** Form 8621
- 专业报税费用 $200-$800/份；5 个中国基金 = $1,000-$4,000/年额外费用
- 故意不报：$10,000+ 罚款；税务追诉期**无限延长**

### 规避 PFIC 的正确方法

1. **不买境外基金**（最根本）——想要中国敞口用美国注册 ETF：
   - MCHI（iShares MSCI China）
   - KWEB（KraneShares China Internet）
   - BABA、腾讯 ADR 等个股 ADR
2. **卖掉已有中国基金**：选收入最低年份一次性清断
3. **直接持中国个股**（非基金）：个股不是 PFIC
4. **港股通买腾讯/阿里**：非 PFIC（但仍有 FBAR/Form 8938 义务）

## 与其他概念的关系

- [[FBAR]] — PFIC 账户通常同时触发 FBAR 报告
- [[双边资产策略]] — **识别并清理 PFIC 是双边资产管理的最优先动作**
- [[Exit-Tax]] — 放弃身份前清理 PFIC 可降低假售时的税负
- [[资本利得税]] — PFIC Default 规则完全抹除长期资本利得优惠

## 参考来源

- [IRS: About Form 8621](https://www.irs.gov/forms-pubs/about-form-8621)
- [IRS: Instructions for Form 8621 (12/2025)](https://www.irs.gov/instructions/i8621)
- [Taxes for Expats: PFIC explained](https://www.taxesforexpats.com/articles/investments/pfic-taxes.html)
- [HCVT: PFIC Rules for U.S. Investors](https://www.hcvt.com/alertarticle-PFIC-Reporting-for-Direct-and-Indirect-Investors)
