---
title: 期权收益 ETF
category: 投资品种
tags: [ETF, 期权, 月度收入, Covered-Call, JEPI, QYLD]
source: "[[raw_material/投资品种-另类/Options-Income-ETF]]"
updated: 2026-05-18
status: stable
---

## 定义

期权收益 ETF 是在基金层面系统卖出 Call 期权、将 premium 以月度分红形式分发的 ETF，主要产品包括 QYLD、XYLD、JEPI、JEPQ，年化分红率通常在 7–12%。

## 核心要点

- **机制**：买入 ETF = 被动参与 Covered Call 策略，无需自己操作期权
- **两类策略**：
  - **ATM Call（QYLD/XYLD）**：premium 最大化，但**完全放弃上行空间**，牛市严重跑输
  - **OTM Call（JEPI/JEPQ）**：premium 中等，**保留部分上行**，总回报更均衡
- **税务陷阱**：分红主要为普通所得（非合格分红），在应税账户持有税后收益大幅打折（10% 分红 × 46% 税率 ≈ 税后 5.4%）
- **Roth IRA 最优**：月度分红免税累积，是 Roth 内获取稳定现金流的高效工具
- **总回报 ≠ 高分红**：QYLD 在牛市 NAV 持续被侵蚀，长期总回报显著低于 QQQ

### 主要产品速查

| ETF | 底层 | Call 类型 | 年化分红 | 费率 | 适用场景 |
|-----|------|---------|---------|------|---------|
| QYLD | 纳斯达克100（QQQ）| ATM | ~10–12% | 0.60% | 熊市/横盘防御 |
| XYLD | 标普500（SPY）| ATM | ~8–10% | 0.60% | 稳健月收入 |
| JEPI | 大盘低波动价值股 | OTM（via ELN）| ~7–9% | 0.35% | 总回报+收入并重 ⭐ |
| JEPQ | 纳斯达克成长股 | OTM（via ELN）| ~9–11% | 0.35% | 科技敞口+月收入 ⭐ |

## 与其他概念的关系

- [[wiki/投资品种/ETF总览\|ETF 总览]]：期权收益 ETF 属于"另类 ETF"子类，不适合作为核心仓
- [[wiki/投资品种/杠杆ETF\|杠杆 ETF]]：同为特殊 ETF，风险来源不同（期权限制上行 vs 杠杆放大波动）
- [[wiki/税务策略/Asset-Location\|Asset Location]]：期权收益 ETF 税务效率差，应优先放 Roth IRA，避免应税账户

## 参考来源

- [[raw_material/投资品种-另类/Options-Income-ETF\|Options-Income-ETF（原始材料）]]
- [[raw_material/投资品种-另类/Options-策略\|Options-策略（Covered Call 机制）]]
