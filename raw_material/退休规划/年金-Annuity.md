---
title: 年金（Annuity）全景调研
collected: 2026-09-06
source_url:
  - https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins/updated-5
  - https://www.investor.gov/introduction-investing/investing-basics/glossary/variable-annuity-surrender-charges
  - https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins/updated-investor-bulletin-indexed-annuities
  - https://www.investor.gov/introduction-investing/investing-basics/glossary/registered-index-linked-annuity-rila
  - https://www.investor.gov/introduction-investing/investing-basics/glossary/registered-market-value-adjustment-mva-annuity
  - https://www.finra.org/investors/investing/investment-products/annuities
  - https://www.finra.org/rules-guidance/key-topics/variable-annuities
  - https://www.finra.org/investors/insights/exchange-variable-annuity
  - https://www.finra.org/investors/insights/complicated-risks-and-rewards-indexed-annuities
  - https://www.irs.gov/pub/irs-drop/n-03-51.pdf
  - https://www.insurance.ca.gov/0150-seniors/0600informationguides/Informing-Senior.cfm
  - https://www.insurance.ca.gov/0150-seniors/0600informationguides/upload/Annuities_Bro_Dx-linked.pdf
  - https://www.thrivent.com/insights/annuities/what-is-a-qualified-longevity-annuity-contract-qlac
  - https://blog.massmutual.com/retiring-investing/what-is-a-qlac
  - https://www.kitces.com/blog/strategies-for-existing-variable-annuities-with-glwb-or-gmib-riders/
  - https://www.annuity.org/annuities/riders/gmwb/
  - https://www.annuity.org/annuities/riders/gmib/
  - https://www.annuity.org/annuities/rates/market-value-adjustment/
freshness: volatile
valid_until: 2027-03-06
tax_year: 2026
---

## 概览

年金（Annuity）是保险公司发行的合同产品：投保人一次性或分期缴纳保费，保险公司承诺在约定时点起支付定期收入，核心功能是转移"长寿风险"（活得比钱久的风险）。年金既可以是简单的保险产品（固定年金），也可以是包裹了证券投资的复杂金融产品（变额年金、RILA），费用结构和风险差异巨大，是零售金融产品中投诉和监管关注最多的品类之一（FINRA、SEC 均发布多篇投资者警示）。

本文按 SEC investor.gov、FINRA、IRS、California Dept of Insurance（CDI）等官方来源整理年金类型、费用、税务和决策框架。

---

## 一、年金类型全景

### 1. 按领取时间分类

**SPIA（Single Premium Immediate Annuity，即期年金）**
- 一次性缴纳保费后，通常在 1 个月至 1 年内开始领取定期收入
- 机制最简单：把一笔钱换成终身或固定期限的现金流，类似"自制养老金"
- 无投资账户、无现金价值累积，一旦购买流动性几乎为零（多数不可撤销）
- **Payout Rate 的计算方式**：保险公司根据购买时的年龄、性别、利率环境和精算生命表定价，payout rate（年领取额 ÷ 保费）不是"投资回报率"，而是本金返还 + 精算死差益（长寿风险共担）+ 少量利息的混合体；年龄越大、payout rate 越高（因预期领取期越短）
  - 示例（2026 年利率环境，来源综合行业报价）：65 岁男性用 $100,000 购买 life-only SPIA，约得每月 $633；同龄女性因预期寿命更长，约得每月 $600
- **Life Only vs Period Certain**：
  - **Life Only（纯终身）**：payout 最高，但受益人死亡后立即停止支付，若早逝则"血本无归"（对遗产而言）
  - **Period Certain（保证期）**：保证支付 10/15/20 年等最低期限，若受益人在保证期内身故，剩余期限的payout转给指定受益人；比 life-only payout 略低，是"用一部分终身收益换取遗产保障"的折中方案
  - **Joint & Survivor / Cash Refund** 等变体进一步降低月领取额以换取配偶保障或本金返还担保
- **通胀调整版本（COLA / Inflation-Adjusted SPIA）**：可选每年按固定比例（如 2%-3%）或 CPI 挂钩递增payout，但初始月领取额显著低于不调整版本（同样保费下，通胀调整版可能比固定payout版低 20%-30%），是"用当期现金流换未来购买力保护"的取舍

**DIA（Deferred Income Annuity，递延收入年金，又称 Longevity Annuity）**
- 缴纳保费后约定未来某个日期（通常退休后多年，甚至 80-85 岁）才开始领取
- 因递延期长，用较小保费换取较大的未来收入，常被用作"长寿保险"（对冲活到很老没钱的尾部风险）
- QLAC（Qualified Longevity Annuity Contract）是 DIA 在合格退休账户（IRA/401k）内的特殊形式，允许延迟 RMD
  - **2026 年额度上限**：单人 **$210,000**（SECURE 2.0 取消了原先"账户余额 25%"的百分比上限，改为纯美元上限 $200,000 起，逐年通胀调整；2026 年调整为 $210,000）；夫妻可各自购买，合计最高 **$420,000**
  - **RMD 豁免机制**：用于购买 QLAC 的资金在收入开始支付前，**不计入**计算 RMD 的账户余额基数，从而降低 72/73 岁起的强制提款额和当年应税所得
  - 收入开始日期可在购买时选定，最晚不超过 **85 岁**；一旦开始支付，QLAC 部分按正常年金收入纳税（qualified 年金整笔应税）
  - 适用场景：预期长寿（家族史、健康状况良好）、希望压低早期 RMD 从而管理 IRMAA/税阶的退休人群

### 2. 按增值机制分类（递延年金 Deferred Annuity）

**固定年金（Fixed Annuity）**
- 保险公司承诺一个固定利率（类似 CD），保底不亏本金
- 机制最简单透明，费用最低，但收益通常落后通胀
- **保证利率机制**：合同通常分两段——首个合同年（或前几年）的"初始保证利率"（往往较高，用于吸引投保）+ 之后年份的"最低保证利率"（合同期内不会低于此，但保险公司可自行下调续保利率至最低线之上）；MYGA（Multi-Year Guaranteed Annuity）则是在整个约定期限（如 3/5/7 年）内锁定同一固定利率，类似"年金版 CD"
- **MVA（Market Value Adjustment，市场价值调整）条款**：部分固定年金（尤其 MYGA）附带 MVA，若在退保期内提前大额提取或全额退保，会根据当前利率环境与购买时利率的差异调整提取金额
  - 若当前利率**高于**购买时利率 → 债券价值下跌 → 提取金额可能被**向下调整**（负 MVA）
  - 若当前利率**低于**购买时利率 → 提取金额可能被**向上调整**（正 MVA），对提前退出者反而有利
  - 只要提取金额在合同允许的免费提取额度内（通常每年 10%），一般不触发 MVA；MVA 只在超额提取或全额退保时生效
  - 无 MVA 条款的固定年金通常费率略低，是"用一定的提前退出风险换取略高保证利率"的取舍（来源：investor.gov MVA glossary）
- **适用场景**：追求保本、需要比银行 CD 略高且税收递延的固定收益、不需要短期流动性的资金；**不适用场景**：需要保留流动性应对未知支出、利率上升周期中锁定长期低利率（会错过后续更高利率的机会成本）

**变额年金（Variable Annuity, VA）**
- 保费投资于类似共同基金的"子账户"（sub-accounts），账户价值随市场波动
- 本金无保底（可亏损），可附加各种 rider（保证收益/保证提取/保证身故）
- 是 SEC 注册证券，销售需持证券牌照，需提供招股说明书（prospectus）
- 来源：FINRA "Variable Annuities" key topic page
- **Sub-account 费用**：子账户本身收取类似共同基金的费用率（Expense Ratio），典型 0.5%-1.5%/年，叠加在 M&E 和管理费之上（见下文费用结构表），部分子账户还有其独立的 12b-1 销售费用
- **Living Benefit Riders（生前给付保证条款）及额外费用**：
  - **GLWB/GMWB（Guaranteed Lifetime/Minimum Withdrawal Benefit，保证终身/最低提取收益）**：保证投保人每年可提取账户"保证基数"的固定比例（不管账户实际市值涨跌），即使账户价值跌到零，仍可按约定比例继续领取直至身故；典型年费 **0.5%-1%**
  - **GMIB（Guaranteed Minimum Income Benefit，保证最低收入收益）**：保证一个最低的未来年金化收入水平，但必须先把账户"annuitize"（转为定期收入流）才能触发该保证；典型年费可达 **1%-1.5%**，通常比 GLWB 更贵且触发条件更苛刻（必须放弃账户余额换取收入流）
  - 叠加 living benefit rider 后，变额年金**总费用可达约 3%/年**（M&E + 管理费 + 基金费用 + rider 费用），侵蚀长期回报显著
  - 来源：Kitces "Strategies For GLWB & GMIB Annuity Riders"；annuity.org GMWB/GMIB 条款说明
- **Surrender Schedule 典型结构**：退保期通常 6-10 年，退保费比例逐年递减（例如：Y1 8% → Y2 7% → Y3 6% → … → Y8 1% → Y9+ 0%），多数合同允许每年免费提取账户价值的 10%（不受退保费影响）
- **适用场景**：已用满税收优惠账户额度、希望税收递延的市场化增值 + 愿意为保证收益支付额外费用买"安心"的投资者；**不适用场景**：对费用敏感、可以自行构建低成本指数基金组合并自我管理提取比例（如 4% rule）的投资者——rider 提供的保证在长期费用侵蚀下往往不划算

**固定指数年金（Fixed Indexed Annuity, FIA / Equity-Indexed Annuity）**
- 收益与某个股票指数（如 S&P 500）挂钩，但设有 Cap（收益上限）、Participation Rate（参与率）、Spread（费用率）等限制
- 本金通常有 0% 保底（指数跌时不亏本金，但也不参与股息）
- FIA 本身不是证券，销售人员只需保险牌照（不需要证券牌照），这也是争议点之一
- **三种限制机制的区别**（可单独或组合使用）：
  - **Cap Rate（收益上限）**：设定一个封顶百分比，无论指数涨多少，入账收益不超过 Cap；例：Cap 7%，指数涨 12%，仍只入账 7%
  - **Participation Rate（参与率）**：只把指数涨幅的一定比例计入账户；例：参与率 75%，指数涨 10%，实际入账 7.5%（10% × 75%）——与 Cap 的区别在于参与率是"按比例打折"，没有绝对封顶（除非同时叠加 Cap）
  - **Spread/Margin/Asset Fee（价差/边际费用）**：从指数涨幅中直接扣除一个固定百分点后再计入账户；例：指数涨 10%，spread 3.5%，实际入账 6.5%——与参与率的区别在于 spread 是"减法"，参与率是"乘法"，低涨幅年份 spread 的相对侵蚀更大（涨幅低于 spread 时甚至可能倒扣为 0，但本金仍保底不亏）
  - 部分合同**组合使用**两种或三种机制（如同时设参与率和 Cap），进一步压缩实际到手收益
- **常见 index 挂钩方式**：传统市值加权指数（S&P 500 Price Return，通常不含股息）、波动率控制指数（Volatility-Controlled Index，人为平滑波动以支撑更高参与率/Cap 报价，但长期表现可能跑输原始指数）、多资产/另类策略指数（保险公司自研指数，历史回测数据有限，透明度较低，需格外警惕）
- 参与率示例（来源 FINRA）：参与率 75%，指数涨 10%，实际入账 7.5%（10% × 75%）
- Cap 示例：Cap 为 7%，指数涨 12%，仍只入账 7%
- **关键警示（FINRA）**：部分 EIA 合同允许发行方在合同存续期内（通常每年或每个合同期开始时）单方面调整参与率、Cap、Spread，投资者应向发行方确认"保证最低参与率"（合同期内不可更改的下限）
- **适用场景**：追求"保本 + 部分市场参与"、能接受上行收益被大幅压缩以换取 0% 下跌保底的保守投资者；**不适用场景**：追求指数全部回报（含股息）的投资者、无法理解保险公司自研指数机制的投资者

**RILA（Registered Index-Linked Annuity，注册指数关联年金，又称 Structured Annuity/Buffer Annuity）**
- 与股票指数挂钩，但设有 Buffer（缓冲，吸收前 10%-20% 的指数下跌）或 Floor（保底，锁定最大亏损比例，如 -10%）
- 与 FIA 的关键区别：RILA 本金**可能亏损**（超过 buffer/floor 部分），是 SEC 注册证券，需证券牌照销售
- 保护越多（buffer 越大/floor 越浅），上行 Cap 越低；反之接受更多下行风险可换取更高上限
- 来源：investor.gov RILA glossary
- **Buffer vs Floor 机制区别**（来源：annuityexpertadvice.com、行业资料交叉印证）：
  - **Buffer（缓冲）**：保险公司吸收指数下跌的**前**一部分（如前 10%），超过部分全部由投保人承担；例：10% buffer，指数跌 25%，投保人承担剩余 15% 的亏损
  - **Floor（保底）**：投保人承担下跌的**前**一部分，达到保底线后保险公司承担超出部分；例：-10% floor，指数跌 30%，投保人只承担 10% 亏损，保险公司吸收剩余 20%
  - 直觉对比：小幅下跌时 buffer 对投保人更有利（前段完全不亏），大幅下跌（黑天鹅）时 floor 提供更明确的"最大亏损上限"保护
  - Buffer 型合同通常搭配更高的 Cap/参与率（因为保险公司只在有限下跌区间内兜底）；floor 型则在极端行情下更可预期
- **RILA 与 FIA 的核心区别再总结**：FIA 本金 0% 保底（不是证券，只需保险牌照），RILA 本金可能亏损（是 SEC 注册证券，需证券牌照+招股说明书），RILA 用"部分保本"换取比 FIA 更高的上行 Cap/参与率——本质是风险收益曲线上更靠近 VA 一侧的产品
- **适用场景**：能承受有限本金亏损、追求比 FIA 更高上行空间、认可"部分保护好过完全无保护"逻辑的投资者；**不适用场景**：需要绝对本金保底（应选固定年金/FIA）、无法承受任何账户价值波动的投资者

---

## 二、费用结构

### 变额年金（VA）典型费用（来源：投保人须知/招股书通常披露项）

| 费用项 | 典型范围 | 说明 |
|---|---|---|
| M&E（Mortality & Expense Risk Charge，死亡与费用风险费） | 约 1.25%/年（账户价值的百分比） | 覆盖保险公司承担的死亡率风险（保证身故受益）和费用不足风险 |
| 管理费（Administrative Fee） | 固定 $25-50/年，或账户价值的约 0.15%/年 | 覆盖记录保存、行政管理 |
| 子账户基金费用（Underlying Fund Expense） | 视基金而定，通常 0.5%-1.5%/年 | 类似共同基金的费用率 |
| Rider 费用（保证收益/保证提取/保证身故等） | 每种 rider 通常 0.5%-1.5%/年，可叠加 | 每加一个保证条款增加一层费用 |
| **总费用（典型合计）** | **约 2%-3%/年** | M&E + 管理费 + 基金费用 + rider 费用叠加后的常见区间 |

来源：SEC investor.gov Variable Annuities Investor Bulletin；FINRA Variable Annuities key topic page

### Surrender Charge（退保费/提前解约费）

- 定义：在"退保期"（Surrender Period）内提前大额提取或全额退保时收取的费用
- **典型退保期长度：6-10 年**（每笔新增缴费单独起算新的退保期）
- 费用比例通常逐年递减（如首年 7%-8%，此后每年递减 1 个百分点，到期归零），具体比例因产品而异
- **Free Look Period（犹豫期/免费查看期）**：收到合同后的一段期限内可无条件全额退款
  - 多数州通常为 10 天以上
  - **California 对 65 岁以上老年人特别规定 30 天免费查看期**，期满前退回可获全额保费退款（来源：CDI Informing Senior 指南）

### 固定/指数年金的隐性成本

- FIA/RILA 本身不收取显性年费，但 Cap、Participation Rate、Spread 相当于"隐性费用"——保险公司通过限制上行收益来覆盖成本和利润
- 这些参数在合同期满后可能被保险公司下调（见上文 FINRA 警示）

---

## 三、税务处理

### Qualified vs Non-Qualified

- **Qualified annuity**：用税前退休账户资金（如 Traditional IRA、401k）购买，整笔提取按普通所得税征税（本金和收益都未交过税）
- **Non-qualified annuity**：用税后资金购买，提取时区分本金（免税，已交过税）和收益（征税）

### 增值递延（Tax Deferral）

- 年金账户内的投资收益在提取前不产生年度纳税义务（不像应税账户每年要报利息/股息/资本利得）
- 这是年金相对于普通应税账户的核心税务优势，但代价是提取时收益部分按**普通所得税率**征税（不是资本利得税率，可能更高）

### 提取顺序：LIFO（Last-In-First-Out）

- Non-qualified 递延年金提取时，IRS 规定**收益部分视为先提取**（LIFO），即早期提取被认定为应税收益，而非免税本金
- 这与人寿保险的提取规则（先本金后收益，FIFO）相反，是常见的税务误解点

### 59½ 岁前 10% 罚金

- 参照 IRC 关于提前分配的规定：59½ 岁前提取年金收益部分的应税部分，除普通所得税外，还需额外缴纳 **10% 罚金**
- 例外情形包括：本人死亡后的受益人提取、致残、经批准的实质相等定期提取（72(t) 系列）等

### Exclusion Ratio（排除比例）——年金化（Annuitization）时适用

- 当 non-qualified 年金转为定期收入流（annuitize）后，每笔收到的付款按"排除比例"拆分为免税的本金返还部分和应税的收益部分
- 排除比例 = 投资本金（Investment in Contract）÷ 预期总收回额（Expected Return）
- 一旦本金全部收回完毕，后续所有付款全额应税

### 1035 Exchange（免税置换）

- IRC Section 1035 允许将一份年金合同（或人寿保险的现金价值）免税置换为另一份年金合同，只要满足同类互换条件（annuity → annuity，或 life insurance → annuity，但不能反向 annuity → life insurance）
- 用途：从高费用/表现差的旧年金置换到费用更低的新年金，同时保留原合同的递延增值不触发应税事件
- 注意：置换到新合同通常会**重新起算 Surrender Charge 周期**，需比较新旧合同的退保费损失与费用节省
- 来源：IRS Notice 2003-51（关于 1035 exchange 的官方指引）

---

## 四、决策框架：谁适合、谁不适合

### 适合考虑年金的情形

- 已经用满其他低成本、高流动性退休账户额度（401k/IRA/HSA），仍有"担心长寿风险"的剩余资金
- 极度厌恶市场波动、需要合同保证的最低收入下限（尤其无企业养老金的人群）
- 希望用一部分资产换取"精算意义上的长寿保险"（DIA/QLAC），把尾部风险转移给保险公司，从而对组合其余部分采取更激进的配置
- 已确认自己不需要这笔资金的流动性（未来 6-10 年内不会有大额资金需求）

### 不适合的情形

- 资产不足、退休预算紧张，任何流动性冻结都可能造成财务困境
- 已经有充足的社保/养老金覆盖基本支出，不需要额外的保证收入
- 短中期（10 年内）有大额资金需求的可能性（教育、医疗、购房等）
- 已在税收优惠账户（401k/IRA）内——在这些账户里包一层"递延增值"的年金意义有限，因为账户本身已经是税收递延的（"用递延包递延"，多花一层费用换不到额外税务好处）

### 与替代方案对比

| 需求 | 年金方案 | 替代方案 | 对比要点 |
|---|---|---|---|
| 保证终身收入 | SPIA/DIA | 延迟领取 Social Security（每延迟一年至 70 岁增加约 8% 终身收益） | SS 延迟通常是成本最低、通胀调整最优的"年金"，应优先用满 |
| 对冲长寿风险 | DIA/QLAC | 自建债券梯（Bond Ladder）覆盖已知支出年限 | 债券梯流动性更好、无保险公司信用风险敞口，但无法对冲"活得比预期久"的尾部风险 |
| 保底 + 部分市场参与 | FIA/RILA | TIPS + 股票配置 | TIPS 直接对冲通胀且流动性好，费用远低于 FIA/RILA 的隐性 Cap 成本 |
| 免税增值 | 变额年金（VA） | 用满 401k/IRA/HSA 后再考虑 VA | VA 的税收递延优势只有在其他税收优惠账户额度用尽后才具吸引力 |

---

## 五、常见坑

1. **高佣金驱动的销售行为**：年金（尤其 FIA、VA 带复杂 rider）佣金率显著高于共同基金/ETF（部分产品佣金可达保费的 5%-10%），FINRA 和 CDI 均发文提醒消费者警惕"免费午餐讲座"式销售，尤其针对老年人群体
2. **指数年金的 Cap/Participation Rate 限制**：投资者常误以为"挂钩指数"等于"获得指数全部涨幅"，实际上 Cap 和参与率大幅削减了上行收益，且发行方可能在合同存续期内下调这些参数
3. **通胀风险**：固定年金和多数 SPIA 提供的是名义金额固定收入，30 年后购买力可能被通胀腐蚀过半；需专门购买"通胀调整"选项（费用更高、初始收入更低）
4. **流动性陷阱**：一旦进入退保期（6-10 年），提前支取的 surrender charge 可能吞掉相当比例本金；多数合同每年允许免费提取一定比例（如 10%），超出部分才收费
5. **"以年金换年金"置换损失**：销售人员可能推动"1035 exchange 到新产品"以赚取新佣金，但会重启退保期并可能损失原合同已积累的保证收益条款（rider 价值可能不可转移）
6. **在税收优惠账户内包年金**：把变额年金放入已经税收递延的 IRA 中，等于多付一层年金费用却拿不到额外递延好处，是被广泛批评的销售误区
7. **误解 LIFO 提取规则**：很多消费者以为提取先动本金（像存款），实际上非合格年金提取时收益部分先被视为应税提取

---

## 参考来源

- [SEC investor.gov - Updated Investor Bulletin: Variable Annuities](https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins/updated-5)
- [SEC investor.gov - Variable Annuity Surrender Charges (glossary)](https://www.investor.gov/introduction-investing/investing-basics/glossary/variable-annuity-surrender-charges)
- [SEC investor.gov - Updated Investor Bulletin: Indexed Annuities](https://www.investor.gov/introduction-investing/general-resources/news-alerts/alerts-bulletins/investor-bulletins/updated-investor-bulletin-indexed-annuities)
- [SEC investor.gov - Registered Index-Linked Annuity (RILA) glossary](https://www.investor.gov/introduction-investing/investing-basics/glossary/registered-index-linked-annuity-rila)
- [FINRA - Annuities (investment products overview)](https://www.finra.org/investors/investing/investment-products/annuities)
- [FINRA - Variable Annuities key topic](https://www.finra.org/rules-guidance/key-topics/variable-annuities)
- [FINRA - Should You Exchange Your Variable Annuity?](https://www.finra.org/investors/insights/exchange-variable-annuity)
- [FINRA - The Complicated Risks and Rewards of Indexed Annuities](https://www.finra.org/investors/insights/complicated-risks-and-rewards-indexed-annuities)
- [IRS Notice 2003-51 - Section 1035 Certain Exchanges of Insurance Policies](https://www.irs.gov/pub/irs-drop/n-03-51.pdf)
- [California Department of Insurance - Informing Seniors](https://www.insurance.ca.gov/0150-seniors/0600informationguides/Informing-Senior.cfm)
- [California Department of Insurance - Annuities Brochure (Index-linked)](https://www.insurance.ca.gov/0150-seniors/0600informationguides/upload/Annuities_Bro_Dx-linked.pdf)
- [SEC investor.gov - Registered Market Value Adjustment (MVA) Annuity glossary](https://www.investor.gov/introduction-investing/investing-basics/glossary/registered-market-value-adjustment-mva-annuity)
- [Thrivent - What is A QLAC? Understanding Qualified Longevity Annuity Contracts](https://www.thrivent.com/insights/annuities/what-is-a-qualified-longevity-annuity-contract-qlac)
- [MassMutual - How a QLAC can balance retirement needs with required distribution rules](https://blog.massmutual.com/retiring-investing/what-is-a-qlac)
- [Kitces - Strategies For GLWB & GMIB Annuity Riders](https://www.kitces.com/blog/strategies-for-existing-variable-annuities-with-glwb-or-gmib-riders/)
- [Annuity.org - How Guaranteed Minimum Withdrawal Benefit (GMWB) Works](https://www.annuity.org/annuities/riders/gmwb/)
- [Annuity.org - How Guaranteed Minimum Income Benefit (GMIB) Rider Works](https://www.annuity.org/annuities/riders/gmib/)
- [Annuity.org - Market Value Adjustment (MVA) in Annuities: How It Works](https://www.annuity.org/annuities/rates/market-value-adjustment/)
