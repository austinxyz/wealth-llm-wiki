---
title: Bond-Ladder
category: 投资品种
tags: [债券, Bond-Ladder, 固定收益, 退休收入, 利率风险, Duration]
source: "[[raw_material/投资品种-固定收益/Bond-Ladder-Duration]]"
updated: 2026-04-16
status: draft
---

# Bond Ladder（债券阶梯）

## 定义

Bond Ladder 是一组**不同到期日的债券**，形成阶梯式现金流：每年有一"梯级"到期，提供持续可预测的收入。通过分散到期日，同时管理利率风险和现金流确定性。

```
Year 1: $50k Bond 到期 → 本金 + 利息
Year 2: $50k Bond 到期
Year 3: $50k Bond 到期
Year 4: $50k Bond 到期
Year 5: $50k Bond 到期
```

## 核心要点

### 为什么用 Bond Ladder

1. **利率风险管理**：利率上升时，到期债券可按新高利率重新投资；利率下降时，已持有长端锁定了旧高利率
2. **现金流确定性**：持有到期可 100% 回收本金（无违约假设），不受市场波动影响
3. **退休防守**：天然对抗 [[SRR]]（Sequence of Returns Risk）

### 债券类型选择

| 债券 | 安全性 | 税务 | 适合 |
|------|-------|------|------|
| **Treasury Notes** | 最高 | 免加州税 | 加州居民首选 |
| **CDs**（FDIC 保险） | 极高 | 全税 | 小额/补充 |
| **Investment Grade Corporate** | 高 | 全税 | 追求更高收益 |
| **California Muni** | 高 | **双免** | 加州高税率者 |
| **TIPS** | 最高 | 放 IRA | 通胀保护 |

### Bond Ladder vs Bond Fund

| 维度 | Bond Ladder | Bond Fund（ETF） |
|------|------------|-----------------|
| 到期确定性 | ✅ 100% 回收 | ❌ NAV 波动 |
| 利率风险 | 持有到期 = 无 | 持续暴露 |
| 最低投资 | $5k-$50k/梯级 | $100+ |
| 管理复杂度 | 中 | ✅ 无需管理 |

**对退休者**：Bond Ladder 的确定性 > Bond Fund 的便利性

### Duration 与利率风险

Duration 衡量债券价格对利率变化的敏感度：
- 利率变化 ±1% → 债券价格变化 ≈ ∓ Duration%
- TLT（长期国债 Duration ~17）：利率涨 1% → 跌约 17%
- SGOV（超短期 Duration ~0.2）：几乎不受利率影响

**2022 年教训**：AGG 跌 13%，TLT 跌 33%——高 Duration 被屠杀。Bond Ladder 在此环境优于 Bond Fund。

### 加州居民最优梯子

- 梯级 1-3：Treasury Notes（免加州税）
- 梯级 4-7：California Muni Bonds（联邦+州双免）
- 梯级 8-10：TIPS（放 IRA，通胀保护）

### 与 Bucket Strategy 整合

Bond Ladder 天然适合作为 Bucket 2（稳健桶，2-10 年）的核心工具，配合 SGOV/T-Bills（Bucket 1）和股票 ETF（Bucket 3）。

## 与其他概念的关系

- [[Bucket-Strategy]] — Bond Ladder 是 Bucket 2 的核心实现工具
- [[SRR]] — Bond Ladder 的确定性现金流对抗顺序收益风险
- [[Municipal-Bonds]] — 加州 Muni 是 Ladder 的优质原料
- [[Asset-Location]] — 长期债券放 IRA（避免利息税）
- [[Bond-Tent]] — 退休前后 Duration 管理策略

## 参考来源

- [Fidelity: How to build a bond ladder](https://www.fidelity.com/viewpoints/investing-ideas/bond-ladder-strategy)
- [Schwab: Bond Laddering Strategy](https://www.schwab.com/fixed-income/bond-ladders)
- [Retirement Manifesto: How To Build A Bond Ladder](https://www.theretirementmanifesto.com/how-to-build-a-bond-ladder/)
