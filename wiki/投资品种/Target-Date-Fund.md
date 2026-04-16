---
title: Target-Date-Fund
category: 投资品种
tags: [TDF, 目标日期基金, 退休, Glide-Path, 401K, 被动投资]
source: "[[raw_material/投资品种-股票基金/Target-Date-Fund]]"
updated: 2026-04-16
status: draft
---

# Target-Date Fund（目标日期基金）

## 定义

Target-Date Fund（TDF）是一站式退休基金，名字里的年份对应退休目标年（如 "2065 Fund"）。核心特征：自动按 **Glide Path** 随年龄调整股债比例，买一只即获得完整多元化组合，自动再平衡无需管理。是大多数 401(k) 的默认选项，"Set it and forget it" 的典型工具。

## 核心要点

### Glide Path（滑动路径）

Vanguard 典型模型：

| 阶段 | 年龄 | 股票比例 |
|------|------|---------|
| 年轻期 | 25-40 | ~90% |
| 过渡期 | 40-55 | 逐步降至 60% |
| 早退休 | 55-70 | 逐步降至 30% |
| 晚退休 | 70+ | ~30% |

**To Retirement** vs **Through Retirement**：Vanguard/Schwab 大多数采用 Through（退休后仍继续调整）；与 [[Bond-Tent]] 的倒 V 型不同，TDF 为单向下降。

### 三大供应商费率对比（2065 TDF）

| 供应商 | 代码 | 费率 | 管理风格 |
|-------|------|------|---------|
| **Vanguard** | VLXVX | **0.08%** | 被动 |
| **Schwab** | SWYKX | **0.08%** | 被动 |
| **Fidelity Freedom Index** | FDKLX | **0.12%** | 被动 |
| Fidelity Freedom（主动） | FFKZX | 0.75% | 主动 ⚠️ |

**费率差距警示**：0.08% vs 0.75%，30 年后终值相差 20%+（约 $100k/50 万基础）。

### 优点与缺点

**优点**：简单（一只基金 = 整个组合）、避免行为偏差、低门槛（$1,000 起）、股债+国内国际全覆盖

**缺点**：
- **"One Size Fits All"**：不了解你的整体资产（房产、SS、年金），打破 [[Asset-Location]] 优化
- **⚠️ 不能放 Taxable 账户**：TDF 为 Mutual Fund，有资本利得分配问题，必须放 IRA/401K
- 国际股票比例偏高（~36%）
- Glide Path 一刀切，不支持 [[Bond-Tent]] 倒 V 型

### 实操建议

- **401(k)**：优先选 TDF（费率 < 0.2% 时），简单自动化
- **IRA/Roth IRA**：TDF 或三基金组合均可
- **Taxable Brokerage**：避开 TDF，改用 ETF 版三基金（VTI + VXUS + BND）

### 目标年份选择

简单规则：65 岁退休年份（1990 年生 → 2055 Fund）。想更激进选晚 5-10 年的基金，想更保守选早 5-10 年。

## 与其他概念的关系

- [[Asset-Location]] — TDF 会打破账户层面的资产配置优化
- [[Bond-Tent]] — TDF 的单向下降 Glide Path 与倒 V 型不同
- [[主动vs被动投资]] — TDF 内部为被动指数，代表 Bogleheads 哲学
- [[4%规则]] — TDF 配合 4% 规则简单直接
- [[FIRE运动]] — FIRE 者通常不用 TDF（灵活度不够）

## 参考来源

- [Vanguard: Target Retirement Funds](https://investor.vanguard.com/investment-products/mutual-funds/target-retirement-funds)
- [NerdWallet: What is a Target-Date Fund](https://www.nerdwallet.com/investing/learn/what-is-a-target-date-fund-and-when-should-you-invest-in-one)
- [Her Personal Finance: Schwab TDF vs Fidelity vs Vanguard](https://herpersonalfinance.com/schwab-target-date-funds-versus-fidelity-and-vanguard/)
