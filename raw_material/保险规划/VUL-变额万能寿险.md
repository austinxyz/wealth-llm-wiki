---
title: VUL（Variable Universal Life，变额万能寿险）全景调研
collected: 2026-09-06
source_url:
  - https://www.finra.org/rules-guidance/notices/00-44
  - https://www.finra.org/investors/investing/investment-products/insurance
  - https://www.investor.gov/introduction-investing/investing-basics/investment-products/variable-life
  - https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins-22
  - https://www.sec.gov/newsroom/press-releases/2020-57
  - https://www.federalregister.gov/documents/2020/05/01/2020-05526/updated-disclosure-requirements-and-summary-prospectus-for-variable-annuity-and-variable-life
  - https://www.irs.gov/pub/irs-drop/rr-05-6.pdf
freshness: volatile
valid_until: 2027-03-06
tax_year: 2026
---

## 概览

VUL（Variable Universal Life，变额万能寿险）是一种永久寿险，结合身故保障、灵活缴费（万能寿险的 flexible premium 特性）和现金价值账户；与 IUL 不同，VUL 的现金价值直接投资于保险公司提供的一篮子**Sub-Account（子账户）**——本质上是包装在保单内的共同基金（clone funds），投资风险和收益**全部由投保人承担**，没有 Cap，也没有 Floor 保底。

VUL 是唯一一种**同时受 SEC（证券）和州保险监管**双重监管的寿险产品：因为现金价值直接暴露于市场（子账户净值可涨可跌，本金无保障），VUL 被 SEC 定性为证券，销售人员必须持有 FINRA 证券牌照（如 Series 6/7）外加保险牌照，销售必须提供 SEC 注册的 Prospectus（招股说明书）。这是 VUL 与 IUL、Whole Life 最本质的监管差异。

本文整理 VUL 的机制、费用结构、与 IUL 的差异、现金值波动与失效（lapse）风险、税务规则（含 MEC）、适用人群和销售陷阱。

---

## 一、VUL vs IUL：核心机制差异

| 维度 | VUL（变额万能寿险） | IUL（指数型万能寿险） |
|---|---|---|
| 现金价值挂钩标的 | 直接投资于 Sub-Account（股票/债券基金篮子），投保人自选配置 | 与指数（如标普500）挂钩的信用利率公式，不直接持有市场头寸 |
| 投资风险承担方 | **投保人**（市场下跌，子账户净值直接缩水，现金价值可能大幅亏损甚至归零） | 保险公司承担指数下跌风险（Floor 保底通常 0%），投保人承担 Cap/参与率带来的上行损失 |
| 下行保护 | **无 Floor**：子账户可下跌 30%-50%（如 2008、2022），现金价值同比例缩水 | 有 Floor（通常 0%），指数下跌当年信用利率不为负（但费用仍照扣） |
| 上行空间 | **无 Cap**：完全捕获子账户实际回报（含股息再投资），可能显著跑赢 IUL | 受 Cap/参与率限制，长期跑输标的指数全额回报 |
| 监管属性 | **SEC 注册证券**，销售需 FINRA 证券牌照 + Prospectus | 保险产品，销售仅需保险牌照，不受 SEC 证券监管 |
| 收益波动性 | 高（跟随市场，年度间可能剧烈波动） | 中（受 Cap/Floor 平滑，波动小于直接持有市场） |

**一句话总结**：IUL 是"有安全网的市场参与"，VUL 是"没有安全网、但没有天花板的直接市场参与"——本质更接近"寿险外壳包裹的共同基金账户"。

---

## 二、费用结构

VUL 的费用层数比 IUL 更多，因为除了保险层费用外，还叠加了投资管理层费用：

| 费用项 | 说明 |
|---|---|
| M&E 费（Mortality & Expense Risk Charge，死亡率与费用风险费） | 保险公司为承担死亡率风险和保证部分合同条款（如身故保底）收取，按现金价值年化比例收取，行业常见约 0.60%-1.25%/年（SEC investor.gov 提及变额年金 M&E 费常见约 1.25%/年，VUL 结构类似） |
| Sub-Account Expense Ratio（子账户投资管理费） | 子账户内部基金的管理费，类似共同基金的 expense ratio，通常 0.5%-2%/年，取决于选择的子账户（指数型子账户较低，主动管理型较高） |
| COI（Cost of Insurance，保险成本） | 覆盖纯保障部分，**随年龄递增**，60-70 岁后大幅上升，逻辑与 IUL 相同 |
| Premium Load（保费加载费） | 每次缴纳保费扣除的比例费用（常见 5%-10%），覆盖佣金和发行成本 |
| Policy/Admin Fee（保单管理费） | 固定月费或年费 |
| 12b-1 / 分销服务费 | 部分子账户内嵌的分销服务费，FINRA 材料提及此类费用不超过子账户资产年化 0.35% |
| Surrender Charge（退保费） | 典型退保期 10 年左右，首年可达现金价值的 10%+，逐年递减 |
| Rider 费用 | 加保（长期护理 rider、guaranteed minimum death benefit rider 等）需额外收费 |

**结构性风险（比 IUL 更突出）**：VUL 叠加了"保险费用"和"投资管理费用"两层成本，且没有 Floor 缓冲市场下跌——如果市场大幅下跌恰逢 COI 攀升的年龄段（60-70 岁+），现金价值可能同时遭遇"市场亏损 + 保险成本上升"双重打击，是所有寿险产品中 lapse（失效）风险最高的品类之一。

---

## 三、现金值波动与 Lapse 风险（VUL 的核心风险点）

- **无 Floor 保护**：子账户直接跟随市场，2008 年金融危机、2022 年股债双杀等年份，VUL 现金价值可能单年下跌 20%-40%，而同期 IUL 因 Floor 机制现金价值信用利率不为负（但仍扣费用）
- **现金价值归零导致保单失效（Lapse）**：如果市场持续下跌 + COI 随年龄上升 + 投保人缴费不足（underfunded policy），现金价值可能被迅速耗尽，保单在没有额外缴费的情况下会进入"grace period"（宽限期），若宽限期内不补缴则保单失效，身故保障和已投入的现金价值全部消失
- **比 IUL 更依赖投保人主动管理**：由于没有 Floor 缓冲，VUL 投保人必须比 IUL 投保人更频繁地监控现金价值/COI 覆盖比例，在市场下跌年份可能需要额外追加保费以避免失效
- **子账户配置选择权 = 额外责任**：投保人需要在多个子账户间自行做资产配置决策（类似管理一个 401k），配置不当（如年龄增长后仍维持高股票仓位）会放大 lapse 风险

---

## 四、税务

### 现金价值增值与提取

- 现金价值在保单内的增值不产生年度纳税义务（税收递延），与 IUL、Whole Life 相同
- **提取顺序为 FIFO**（先本金后收益）：提取金额未超过已缴保费总额（cost basis）前免税，超过部分需缴纳普通所得税
- **保单贷款（Policy Loan）机制**：借款不算"提取"，不触发应税事件；只要保单在世期间持续有效，贷款理论上可"免税"取出现金价值

### Lapse 风险与贷款的税务陷阱（VUL 尤其突出）

- 如果保单因市场下跌 + COI 上升 + 现金价值不足而**失效（lapse）或被迫全额退保**，此前视为"贷款"的部分会被重新定性为应税提取——所有超过已缴保费的贷款余额一次性计入当年应税所得，且现金已经花掉，可能造成"无现金却要交一大笔税"的困境
- 由于 VUL 现金价值波动幅度通常大于 IUL（无 Floor），市场下跌周期中 VUL 触发 lapse 的概率相对更高，这一税务陷阱风险也更突出

### MEC（Modified Endowment Contract，修正养老合同）陷阱

- IRC §7702A 规定的 **7-pay test**：若保单头 7 个保单年度内累计缴纳保费超过精算限额的"7 年期缴清保费"，保单将被永久定性为 MEC；该规则适用于所有具备现金价值积累能力的永久寿险（Whole Life、UL、IUL、VUL 均适用）
- 一旦被定性为 MEC：
  - 提取和贷款按 **LIFO**（收益先出）征税，而非正常寿险的 FIFO
  - 59½ 岁前提取应税部分的收益，额外缴纳 **10% 罚金**
  - 死亡赔付仍然免税，现金价值仍递延增值，但生前提取的税务优势大幅削弱
  - 保单发生"重大变更"（material change，如大幅提高保额）会重启 7-pay test 测试期
- MEC 定性**不可逆转**，常见于投保人为追求快速积累现金价值、缩短缴费年限而"超额缴费"（overfund）时不慎触发
- 来源：IRS Revenue Ruling 2005-6（§7702/7702A 相关指引）

---

## 五、SEC 披露监管：2020 年新规

- 2020 年 SEC 通过新规（Release Nos. 33-10765），允许变额年金和变额寿险（含 VUL）使用**精简版 Summary Prospectus**（概要招股说明书），取代过去冗长的完整版 Prospectus 作为默认交付文件，目的是提升投资者对费用、风险的理解度
- 完整版 Prospectus 仍需在投保人要求时或首次交易后免费提供，其中包含费用表（Fee Table）、子账户投资组合详情、surrender charge 明细等
- 消费者应重点核对 Prospectus 中的"Fee Table"，逐项核对 M&E 费、子账户 expense ratio、premium load、surrender charge schedule，而不是仅听销售口头介绍
- 来源：SEC 2020-57 新闻稿；Federal Register 2020-05526

---

## 六、vs IUL / vs 定期寿险 + 自行投资

| 维度 | VUL | IUL | 定期寿险 + 自投指数基金 |
|---|---|---|---|
| 投资风险承担 | 投保人（无 Floor） | 保险公司部分承担（有 Floor，但 Cap 限制上行） | 投保人（但无保险层费用） |
| 费用层数 | 保险费用 + 投资管理费两层，总费用通常是三者中最高 | 保险费用为主，无独立投资管理费 | 仅 ETF/基金费率（0.03%-0.20%/年） |
| 上行空间 | 无 Cap，完全捕获市场回报 | 受 Cap/参与率限制 | 无 Cap，完全捕获市场回报 |
| 监管/透明度 | SEC 证券监管，需 Prospectus，费用披露相对最规范 | 保险监管为主，illustration 演示利率易误导（见 AG 49 系列） | 透明度最高（公开市场基金费率） |
| Lapse 风险 | **最高**（无 Floor + 双层费用侵蚀） | 中（有 Floor 缓冲，但 illustration 常低估费用） | 无 lapse 概念（Term 到期即结束，无现金价值消耗问题） |
| 适用人群 | 已用满税收优惠账户额度、能承受市场波动和主动管理责任、追求"寿险包裹下的股票市场敞口"的高净值人群 | 追求"保底 + 部分上行"、风险承受度低于 VUL 投保人 | 绝大多数普通家庭的默认最优选择 |

行业与监管共识（FINRA、SEC investor.gov 材料反复强调）：VUL 的双层费用结构（保险 + 投资管理）叠加无 Floor 保护，使其成为永久寿险中**风险最高、也最依赖投保人主动管理**的品类；对大多数追求"投资增值"的家庭，"定期寿险 + 低成本指数基金"组合几乎总是更优选择。VUL 更适合已经最大化 401k/IRA/HSA 额度、确实需要终身寿险保障、且愿意/能够承担类似自管理投资组合责任和市场波动的高净值人群。

---

## 七、常见销售话术与坑

1. **"你自己选投资、上不封顶"话术**：销售强调 VUL 没有 Cap、能完全捕获市场回报，但淡化"没有 Floor、下跌也没有保底"这一对称风险，尤其是退休前后现金流最脆弱阶段遭遇熊市的组合风险
2. **淡化双层费用**：只强调"保费灵活、终身保障"，不主动列出 M&E 费 + 子账户 expense ratio + COI + premium load 的叠加总成本，实际年化费用可能显著高于表面印象
3. **illustration 使用历史牛市平均收益率做演示**：与 IUL 类似，VUL 的非保证演示利率也常用历史较好时段的平均回报率，消费者应索取"最差情形"压力测试（如假设子账户 0% 或负回报若干年）下保单能维持多少年不失效
4. **忽视 COI 随年龄上升 + 市场周期叠加风险**：早期看似现金价值增长良好，但退休后阶段一旦遇到熊市 + COI 大幅上升的"双杀"，现金价值消耗速度远超预期
5. **在已用满税收优惠账户前就推销 VUL**：401k/IRA/HSA 的税收优势和费用效率通常优于 VUL 包裹的证券投资，应优先用满
6. **1035 exchange 换新保单赚佣金**：与 IUL、年金类似，销售人员可能推动"以旧换新"赚取新佣金，但会重启 surrender charge 周期
7. **超额缴费触发 MEC**：为追求快速积累现金价值而不了解 7-pay test 限额，导致保单被动变为 MEC，损失税务优势
8. **把 VUL 包装成"退休账户替代品"**：淡化 VUL 本质是"保险 + 证券投资"混合产品，其费用结构和 lapse 风险使其在大多数情形下劣于直接使用退休账户 + 应税账户投资

---

## 参考来源

- [FINRA Notice to Members 00-44 (Variable Life Insurance Sales Practice Standards)](https://www.finra.org/rules-guidance/notices/00-44)
- [FINRA - Insurance investment products overview](https://www.finra.org/investors/investing/investment-products/insurance)
- [SEC Investor.gov - Variable Life Insurance](https://www.investor.gov/introduction-investing/investing-basics/investment-products/variable-life)
- [SEC Investor.gov - Investor Bulletin: Variable Life Insurance](https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins-22)
- [SEC Press Release 2020-57 - SEC Adopts Investor Disclosure Improvements for Variable Annuities and Variable Life Insurance Contracts](https://www.sec.gov/newsroom/press-releases/2020-57)
- [Federal Register 2020-05526 - Updated Disclosure Requirements and Summary Prospectus for Variable Annuity and Variable Life Insurance Contracts](https://www.federalregister.gov/documents/2020/05/01/2020-05526/updated-disclosure-requirements-and-summary-prospectus-for-variable-annuity-and-variable-life)
- [IRS Revenue Ruling 2005-6 - Section 7702/7702A Life Insurance Contract Defined](https://www.irs.gov/pub/irs-drop/rr-05-6.pdf)
