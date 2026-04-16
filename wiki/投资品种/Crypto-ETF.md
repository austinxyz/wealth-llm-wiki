---
title: Crypto-ETF
category: 投资品种
tags: [加密货币, Bitcoin, ETF, IBIT, ETHA, Property, 税务]
source: "[[raw_material/投资品种-另类/Crypto-Gold-Commodities]]"
updated: 2026-04-16
status: draft
---

# Crypto ETF（加密货币 ETF）

## 定义

2024 年 1 月美国 SEC 批准 Spot Bitcoin ETF，2024 年中批准 Spot Ethereum ETF，彻底改变了加密资产的投资通道。投资者现可通过普通券商账户持有加密敞口，无需管理私钥或钱包。

IRS 将加密货币定性为 **Property（财产）**，而非货币，适用资本利得税规则，但**不适用 Wash Sale Rule**。

## 核心要点

### 主流 Spot ETF

| 代码 | 资产 | 费率 | 管理方 |
|------|------|------|-------|
| **IBIT** | Bitcoin | 0.25% | BlackRock |
| **FBTC** | Bitcoin | 0.25% | Fidelity |
| **BITB** | Bitcoin | 0.20% | Bitwise |
| **ETHA** | Ethereum | 0.25% | BlackRock |
| **FETH** | Ethereum | 0.25% | Fidelity |

优势：通过 Fidelity/Schwab/Vanguard 购买；SIPC 保护；可放入 IRA/Roth IRA

### IRS 税务规则（Property）

| 事件 | 税务处理 |
|------|---------|
| 买入 / 持有 | 不触发 |
| **卖出 ETF** | 资本利得（长期/短期） |
| 换币（BTC→ETH） | 视为卖出+买入 |
| 挖矿 / Staking 奖励 | 收到时按普通所得 |

**Spot Bitcoin ETF（Grantor Trust 结构）**：你被视为直接持有 BTC；卖出 = 卖出 BTC；长期资本利得 0/15/20%

### 无 Wash Sale Rule

由于加密被视为 Property 而非 Security，**不适用 30 天 Wash Sale 规则**——可以卖出亏损后立即买回同种加密。这是税损收割的优势。

注意：2026 年起 broker 须向 IRS 报告成本基础（Form 1099-DA），不能"忘记"申报。

### 配置建议

- **仓位**：加密占总组合 5-10% 以内
- **最优账户**：Roth IRA（增值免税，规避加密高波动收益的税负）
- **策略**：DCA 定投（年度波动 -70% 到 +300%，分批买入心理舒适）
- 不推荐期货 ETF（如 BITO），有 Roll Cost，Spot ETF 已取代

## 与其他概念的关系

- [[税损收割]] — 加密无 Wash Sale Rule，可更激进地做税损收割
- [[Wash-Sale-Rule]] — 加密不适用（Property vs Security）
- [[FBAR]] — 境外加密交易所账户可能触发报告义务
- [[PFIC]] — 外国加密基金可能触发 PFIC
- [[Asset-Location]] — Roth IRA 是加密的最优账户

## 参考来源

- [IRS: Digital assets](https://www.irs.gov/filing/digital-assets)
- [BlackRock: IBIT iShares Bitcoin Trust](https://www.blackrock.com/us/financial-professionals/investments/products/bitcoin-investing)
- [Green Trader Tax: Spot Bitcoin ETPs and Wash Sale Rules](https://greentradertax.com/spot-bitcoin-etps-etfs-and-wash-sale-rules-property-or-securities/)
- [CoinLedger: How are Bitcoin ETFs taxed 2026](https://coinledger.io/blog/how-are-bitcoin-etfs-taxed)
