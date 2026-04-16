# 1031 Exchange（1031 同类置换）

**收集日期：** 2026-04-16

## 来源

- [IRS: Like-Kind Exchanges Under IRC Section 1031 (Fact Sheet FS-08-18)](https://www.irs.gov/pub/irs-news/fs-08-18.pdf)（官方）
- [IPX1031: 1031 Exchange Services - Qualified Intermediary](https://www.ipx1031.com/)
- [IPX1031: The Role of the Qualified Intermediary](https://www.ipx1031.com/the-role-of-the-qualified-intermediary/)
- [1031X: Guide to a Qualified Intermediary and 1031 Exchanges](https://www.1031x.com/1031-investor-center/the-qualified-intermediary/)
- [Realized1031: Qualified Intermediary 1031 Exchange Accommodator](https://www.realized1031.com/qualified-intermediary)
- [Atlas 1031: What is a Qualified Intermediary?](https://atlas1031.com/basics/what-is-a-qualified-intermediary/)
- [California FTB: Qualified intermediary](https://www.ftb.ca.gov/pay/withholding/qualified-intermediary.html)

## 核心概念

**IRC Section 1031 允许投资用房地产的"置换"递延资本利得税**。卖出投资房 → 45 天内指定新房 → 180 天内完成购买，**卖出收益的资本利得税可无限递延**。

2017 TCJA 改革后，**1031 Exchange 仅限于真实不动产**（此前动产也可，如艺术品、飞机）。

## 核心要求

### 1. "Like-Kind"（同类）的含义

"Like-Kind" 在不动产领域**极其宽松**：

✅ 都算同类：
- 出租公寓 ↔ 办公楼
- 空地 ↔ 购物中心
- 农场 ↔ 工业厂房
- 单户出租 ↔ 多户公寓
- 美国任何州 ↔ 另一州

❌ 不算同类：
- 不动产 ↔ 动产（车、船、股票）
- 美国不动产 ↔ 国外不动产
- **自住房** ↔ 任何东西（自住不符合"投资用"）

### 2. 持有目的要求

物业必须**持有用于贸易/业务或投资**，而非个人自住。IRS 安全港建议至少持有 2 年。

### 3. 不能"降级"（Trade Down）

新房的**价值 + 贷款** 必须 ≥ 旧房的**卖出价 + 卖出贷款偿还**，否则差额部分（"boot"）仍要缴税。

## 关键时间线（严格）

```
Day 0     卖出旧房，交割（Close Escrow）
  ↓
  45 天   必须书面指定（Identify）替代房（最多 3 处，或 200% 价值规则）
  ↓
  180 天  必须完成替代房购买（Close Escrow）
```

⚠️ **两个期限同步倒计时，不重置**。
⚠️ **45 天不可延期**，除非 IRS 特殊灾害豁免。
⚠️ 如果 180 天落在报税截止日（4/15 或延期后）之前，按**较早者**为准。

## 替代房指定规则（选一种）

### 3-Property Rule（最常用）

指定不超过 3 处替代房，**任选购买即可**，不看总价值。

### 200% Rule

指定超过 3 处，但总 FMV 不超过卖出房价值的 200%。

### 95% Exception

指定超过 200%，但必须**实际完成购买 ≥ 95% 价值**。

## 合格中介（Qualified Intermediary / QI）

**关键角色**：卖家不能直接接触卖出款——必须由 **独立第三方 QI** 持有。

### QI 资格要求

- 不能是与卖家过去 2 年有直接金融关系的任何人
- 不能是卖家直接雇佣的代理（房产经纪、律师、会计、财务顾问等）
- 通常是专业 1031 Exchange 公司（如 IPX1031、First American Exchange、Asset Preservation）

### QI 流程

```
Day 0:     卖出房，钱直接给 QI（不给卖家）
Day 1-45:  卖家向 QI 书面指定替代房
Day 46-180: QI 持有资金，等待替代房交割
Day X:     QI 把资金支付给替代房卖家，交割
结果：     卖家不曾"建设性占有"（Constructive Receipt）资金，符合 1031
```

### 风险

- QI 破产 → 资金可能损失（2008 金融危机发生过）
- 选择有**额外保险或信托账户保护**的 QI

## 税务递延（非免除）

**1031 是递延，不是免税**：
- 旧房成本基础（Adjusted Basis）**结转**到新房
- 最终卖新房（非 1031 置换）时，累积所有递延利得一次缴税

**例**：
- 旧房：买入 $200k，卖出 $500k → 资本利得 $300k
- 1031 → 新房 $500k，Basis = $200k（递延）
- 未来卖新房 $700k → 资本利得 $500k（含原本 $300k）

## "Step-Up at Death"：终极逃税技巧

**关键**：如果持有 1031 换来的房产直到去世：
- 继承人获得 **Step-Up Basis**（按死亡日 FMV 重置）
- 所有递延资本利得**完全消失**（不再缴税）
- 这是"Swap Till You Drop"策略的核心逻辑

## 加州特殊：Claw-Back Provision

加州 2014 年起实施 **Section 18032**：
- 加州居民把加州投资房 1031 换到其他州 → 加州仍保留对原加州房的税权
- 未来卖出其他州房时，仍需向加州报 FTB Form 3840
- 即使不再是加州居民也要继续申报

**实际效应**：从加州 1031 出去"逃"加州税非常难。

## Reverse Exchange（反向置换）

标准 1031 是"先卖后买"。**反向置换**是"先买后卖"：
- 找到心仪新房，但旧房还没卖
- 用 Exchange Accommodation Titleholder (EAT) 先"代持"新房
- 180 天内卖出旧房 → 完成置换
- 更复杂、费用更高（$5-15k），但给操作灵活度

## Delaware Statutory Trust (DST)

**个人投资小额 1031 的替代方案**：
- 集合多个投资者共同持有大型商业房产
- 最低投资 $25-100k
- 无主动管理（适合准备退休的房东）
- 仍然符合 1031 要求

## 执行费用

| 项目 | 典型成本 |
|------|---------|
| QI 费用 | $750 – $1,500（简单）；$3-8k（复杂） |
| Title Insurance | 与常规买卖同 |
| 律师咨询 | $500-$2,000 |
| Reverse Exchange 额外 | +$4-10k |

## 常见陷阱

1. **错过 45 天指定** → 交易失败，全额缴税
2. **"Boot" 未规避** → 部分缴税（新房价值或贷款低于旧房差额）
3. **过早解散 QI** → 建设性占有资金，整个交易被推翻
4. **自住房参与** → 必须先转为投资房持有 2 年+
5. **交易未在 180 天内完成** → 全额应税
6. **加州 Claw-Back 忽略** → 未来加州补税

## 与其他策略协同

### 与 [[Asset-Location]]

房产天然适合 Taxable（不能放 IRA）。1031 是 Taxable 内递延资本利得的最有效手段。

### 与 FIRE / 退休规划

房地产现金流 + 1031 递延 → 退休后靠被动收入 + Step-up 继承给后代。

### 与 [[DAF-Donor-Advised-Fund]]

捐赠房产给 DAF：
- 避免资本利得
- 获得 FMV 慈善扣除
- 替代 1031 的"退出策略"

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/1031-Exchange.md`
- [ ] `wiki/税务策略/Step-Up-Basis.md`
- [ ] `wiki/税务策略/加州Claw-Back.md`
- [ ] `wiki/投资品种/DST-Delaware-Statutory-Trust.md`
