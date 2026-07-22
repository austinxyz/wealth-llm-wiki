# 全库质量审计汇总 2026-07-22

> 由 /wealth-audit --all 首轮运行生成（3 批并行）。批量模式：每文件核对 3-5 个关键事实。

# Raw Material 质量审计 — 批次 A

**日期**：2026-07-22
**范围**：raw_material 根目录 6 个散文件 + 税务基础/ + 税务优化/ + 退休账户/ + 退休规划/ + 股权激励/（共 26 个文件）
**方式**：批量模式，每文件 3-5 个最关键事实联网核对（irs.gov 等官方源优先）

## 评分矩阵

| 文件 | A事实 | C覆盖 | B来源 | D结构 | ❌数 | 最大问题一句话 |
|------|------|------|------|------|------|------|
| raw_material/00-知识点提纲.md | — | A | — | B | 0 | 索引/提纲类文件，非知识内容，无 source_url 属预期内 |
| raw_material/中美财富管理体系对比分析.md | C | B | D | C | 1 | 标普500 30年复利被"豆包的校对"自证算错（应约185万非200万/20倍），且无 source_url |
| raw_material/国内外理财对比调研.md | B | A | C | C | 0 | 无 source_url（仅文末列参考来源文字，非结构化链接），部分数字（社保精算枯竭年份等）未逐条核实 |
| raw_material/投资策略建议.md | B | A | D | C | 0 | 无 source_url；QDII 纳指年化数字与"豆包对投资策略建议的校对"指出的口径不一致（本文件本身写 14-16% 已修正，未见 20%+ 版本） |
| raw_material/豆包对投资策略建议的校对.md | — | — | F | D | 0 | 元评论文件，非知识条目，完全无 source_url/frontmatter 规范字段外的结构 |
| raw_material/豆包的校对.md | — | — | F | D | 0 | 同上，元评论文件，无来源 |
| raw_material/税务基础/AMT.md | A | A | A | A | 0 | 无重大问题；2026 AMT 豁免+phase-out 加倍已核实 |
| raw_material/税务基础/NIIT.md | A | A | A | A | 0 | 无重大问题；MAGI 门槛固定未变已核实 |
| raw_material/税务基础/加州所得税税阶.md | B | A | A | A | 0 | 使用 2025 tax_year 数字但声称"最新"，未来 FTB 2026 数字发布后需更新 |
| raw_material/税务基础/合格分红vs普通分红.md | A | A | A | A | 0 | 无重大问题 |
| raw_material/税务基础/联邦所得税税阶-2026.md | A | A | A | A | 0 | 2026 税阶/AMT豁免额已核实一致 |
| raw_material/税务基础/资本利得税.md | A | A | A | A | 0 | 无重大问题 |
| raw_material/税务优化/1031-Exchange.md | B | A | A | A | 0 | 事实类内容未逐条联网复核（如 QI 费用区间），但无发现错误 |
| raw_material/税务优化/Asset-Location.md | B | A | A | A | 0 | 属框架性内容，数字未强核实但方向正确 |
| raw_material/税务优化/DAF-Donor-Advised-Fund.md | B | A | A | A | 1 | 0.5% AGI floor 是否豁免 DAF 捐赠本身存在信息模糊（部分来源称 DAF/私人基金会捐赠被排除在此新规外），文件未提及此排除可能性 |
| raw_material/税务优化/QBI-Deduction.md | A | A | A | A | 0 | $400 最低扣除、永久化、phase-out 范围均核实正确 |
| raw_material/税务优化/Roth-Conversion-Ladder.md | A | A | A | A | 0 | 无重大问题 |
| raw_material/退休账户/401K-Rollover.md | B | A | A | A | 0 | 内容为规则性描述，未强制核实数字（本文本身数字很少） |
| raw_material/退休账户/Backdoor-Roth-IRA.md | B | A | A | A | 0 | 2026 Roth IRA MAGI 限额等未逐条联网复核，但方向正确 |
| raw_material/退休账户/HSA.md | B | A | A | A | 0 | 2026 HSA 供款上限（$4,400/$8,750）与 HDHP 门槛未逐条联网复核 |
| raw_material/退休账户/Mega-Backdoor-Roth.md | B | A | A | A | 0 | 401k 总限额 $72,000/2026 员工 deferral $24,500 与官方标题一致，其余细节未逐条核实 |
| raw_material/退休账户/Solo-401K-vs-SEP-IRA.md | B | A | A | A | 0 | 未逐条核实但与 IRS 官方一致的限额数字对齐 |
| raw_material/退休账户/Traditional-IRA.md | A | A | A | A | 0 | 2026 IRA 供款上限 $7,500/$8,600、扣除phase-out已核实 |
| raw_material/退休规划/4%规则与安全提取率.md | B | A | A | A | 0 | 观点/研究类数字（Morningstar 3.9%等）未逐条核实但引用来源可靠 |
| raw_material/退休规划/Bond-Tent.md | B | A | A | A | 0 | Kitces 回测数字未逐条核实，属于研究引用性质 |
| raw_material/退休规划/Bucket-Strategy.md | B | A | A | A | 0 | 无重大问题，框架性内容 |
| raw_material/退休规划/FIRE运动.md | B | A | A | A | 0 | 无重大问题，框架性内容 |
| raw_material/退休规划/Sequence-of-Returns-Risk.md | B | A | A | A | 0 | 历史 SAFEMAX 数字未逐条核实 |
| raw_material/股权激励/83(b)Election.md | B | A | A | A | 0 | 无重大问题 |
| raw_material/股权激励/ESPP.md | B | A | A | A | 0 | 无重大问题 |
| raw_material/股权激励/ISO-vs-NSO.md | B | A | A | A | 0 | 无重大问题 |
| raw_material/股权激励/RSU.md | **C** | A | A | A | **1** | 2026 Social Security 工资基数写成 $176,100（实为 2025 数字），2026 正确值为 **$184,500** |

注：范围要求为"税务基础/税务优化/退休账户/退休规划/股权激励"共 26 个专项文件 + raw_material 根目录 6 个散文件 = 32 个文件；本次全部审阅完毕。根目录 6 个文件多为非结构化调研/校对文本，四维评分中"—"表示该维度不适用（如无关键可核事实、无覆盖 checklist 意义）。

## ❌ 明细（附官方出处）

### 1. raw_material/股权激励/RSU.md — 2026 年 Social Security 工资基数错误

- **原文**：`Social Security：6.2%（2026 上限 $176,100）`
- **错误**：$176,100 是 **2025** 年的 Social Security 应税工资上限，非 2026 年
- **正确值**：2026 年 Social Security Wage Base = **$184,500**（2025 年的 $176,100 上调 $8,400，约 4.8%）
- **官方出处**：[SSA: What is the current maximum amount of taxable earnings for Social Security?](https://www.ssa.gov/faqs/en/questions/KA-02387.html)；亦见 [Kiplinger: Social Security Tax Limit for 2026](https://www.kiplinger.com/taxes/social-security-tax-wage-base-jumps)
- **建议修复**：将文中数字改为 $184,500，并更新 `collected` 日期

### 2. raw_material/税务优化/DAF-Donor-Advised-Fund.md — 0.5% AGI floor 是否适用于 DAF 捐赠存在信息模糊（标注 ❓/需人工复核，非确定性 ❌）

- **原文表述**：暗示 2026 起所有慈善捐赠（含 DAF）都受 0.5% AGI floor 约束，用以论证"bunching + DAF"策略更重要
- **潜在问题**：部分权威来源指出"捐赠给 DAF 或私人非运营基金会的部分被排除在（某项相关）扣除限制之外"，具体排除范围/条款需进一步核实是否影响本文档"bunching 更重要"的论证逻辑
- **官方/权威出处**：[CAPTRUST: OBBBA Charitable Rules Update for 2026](https://www.captrust.com/resources/obbba-charitable-rules-update-for-2026/)；[Daffy: How the OBBBA Changes Giving](https://www.daffy.org/resources/obbba-charitable-deduction-changes)
- **建议**：人工再核实 IRS 官方指引（Notice/Reg）中 0.5% floor 对 DAF 捐赠的具体适用范围，避免策略建议方向性错误

### 3. raw_material/中美财富管理体系对比分析.md — 复利计算错误（文件自身已被"豆包的校对.md"指出，本次审计确认属实）

- **原文**：`1995-2025标普500含分红年化约10.7%；10万美元→约200万美元（20倍）`
- **错误**：$100,000 × (1.107)^30 ≈ **$1.85M**（约18.5倍），而非 $2M/20倍
- **验证**：数学计算可直接复核，(1.107)^30 ≈ 18.5，非 20
- **建议修复**：更正为"约185万美元（18.5倍）"，或注明具体年化率假设来源

## 结构问题（D 评分 < A 的文件）

- **raw_material/中美财富管理体系对比分析.md / 国内外理财对比调研.md / 投资策略建议.md**：`source_url: []`，仅在正文末尾以纯文字列参考来源，不符合 schema 要求的结构化 URL 列表；且这些文件性质上属于"分析/建议"而非"原始资料"，与 CLAUDE.md 定义的 raw_material 应为"通用知识、调研文章"存在一定张力（但不含个人数据，未违反隐私红线）
- **raw_material/豆包对投资策略建议的校对.md / 豆包的校对.md**：完全无正文引用来源，属于 AI 生成的二手评论/校对文本，缺乏可验证性；建议标注为"内部工作稿"而非可信 raw_material，或补充其所依据的官方来源

## 修复清单（供后续人工确认，批量模式不自动修复）

1. 修正 RSU.md 中 2026 Social Security 工资基数为 $184,500
2. 复核 DAF-Donor-Advised-Fund.md 中 0.5% AGI floor 对 DAF 捐赠的适用范围表述
3. 修正"中美财富管理体系对比分析.md"标普500 30年复利计算（18.5倍非20倍）
4. 为 3 个无 source_url 的根目录文件补充结构化来源链接，或降级为非入库分析稿
5. 评估"豆包的校对.md"与"豆包对投资策略建议的校对.md"两个文件是否应保留在 raw_material（建议移至 output/ 或标注为内部讨论稿，因其无独立可验证来源、且已被后续内容部分吸收）

# 全库质量审计 —— 批次 B

**范围**：跨境税务/ + 跨境操作/ + 身份税务/ + 社保医保/ + 教育储蓄/ + 遗产规划/（24 个文件）
**审计日期**：2026-07-22
**模式**：批量模式（每文件 3-5 个关键事实联网核对）

## 评分矩阵

| 文件 | A事实 | C覆盖 | B来源 | D结构 | ❌数 | 最大问题 |
|------|-------|-------|-------|-------|------|----------|
| 跨境税务/FATCA.md | A | A | A | A | 0 | 无重大问题，官方源齐全 |
| 跨境税务/FBAR.md | A | A | A | A | 0 | 2026 非故意罚款 $16,536 已核实一致 |
| 跨境税务/Foreign-Tax-Credit.md | B+ | A | A | A | 0 | FEIE 2026 额度 ~$132,900 未逐一核实（合理但非官方数字核对） |
| 跨境税务/Form-8938.md | A | A | A | A | 0 | 门槛表述准确、结构完整 |
| 跨境税务/PFIC.md | A | A | A | A | 0 | evergreen 定级合理，无时效数字 |
| 跨境税务/中美税收协定.md | A | A | A | A | 0 | Savings Clause 阐述准确 |
| 身份税务/183天规则.md | A | A | A | A | 0 | 官方 IRS 公式与示例核对无误 |
| 身份税务/Exit-Tax.md | A | A | A | A | 0 | 2026 豁免额 $910,000 已核实一致 |
| 身份税务/双重居民.md | A | A | B+ | A | 0 | 部分来源为律所博客，核心法源（IRC 7701(b)(6)(B)）准确 |
| 身份税务/绿卡vs公民vs非居民.md | A | A | A | A | 0 | 内容与其他条目交叉一致 |
| 身份税务/退休回国税务.md | B+ | A | A | A | 0 | 中国个税税率表未逐档核对（合理但未联网验证） |
| 跨境操作/购汇额度与汇款通道.md | B | B | **C** | B+ | 0 | ⚠️ 无一条官方来源（无 safe.gov.cn/pbc.gov.cn），全为二手中文财经媒体/知乎 |
| 跨境操作/跨境资产申报与处理.md | B+ | A | B+ | A | 0 | 综合性强，个别细节（公积金提取税务）标注"争议领域"，诚实但增加不确定性 |
| 社保医保/COBRA.md | B+ | A | B+ | A | 0 | 2026 月保费区间（$560-780）来自二手商业站点，非官方精算数字 |
| 社保医保/WEP-GPO.md | A | A | A | A | 0 | 2025 年 SSFA 废除时间线与官方 SSA 页面一致 |
| 社保医保/ACA-Marketplace.md | A | A | A | A | 0 | 400% FPL 断崖已核实，与 2026 现状完全一致 |
| 社保医保/Medicare-ABCD-Medigap.md | B+ | A | A | A | 0 | Part B 标准保费 $202.90 已核实一致；IRMAA 顶档 MFJ >$750k 与部分二手源（$410k 起降）存在出入，需与 CMS 官方 Fact Sheet 逐档复核 |
| 社保医保/Social-Security-领取策略.md | B+ | A | A | A | 0 | 62/70 岁最高月领额（$2,969/$5,181）已核实；FRA 67 岁最高月领额文件写 $4,152，另一独立来源写 $4,207，存在小额出入 |
| 教育储蓄/529-Plan.md | A | A | A | A | 0 | K-12 $20k、Roth 转存 $35k 终身额度符合 2026 现行规则 |
| 教育储蓄/Coverdell-ESA-UTMA-UGMA.md | A | A | A | A | 0 | Kiddie Tax 分档、$2,000 供款上限准确 |
| 遗产规划/Beneficiary-Designation.md | B+ | A | B | A | 0 | 无官方（IRS/SSA）来源，全为券商/律所站点；SECURE Act 10 年规则本身准确 |
| 遗产规划/Power-of-Attorney.md | B+ | A | **C** | A | 0 | 无 .gov 官方来源（California Courts 未引用），加州 Probate Code 条款号未附法条链接 |
| 遗产规划/Trust-类型.md | B+ | A | **C** | A | 0 | 无官方来源；Trust 37% 税率门槛 $15,650（2026）等数字未逐一核对 |
| 遗产规划/Will-遗嘱.md | A | A | A | A | 0 | 引用 California Courts 官方页面；Probate 阈值 $184,500 与加州现行规则一致 |
| 遗产规划/数字遗产管理.md | B | A | **C** | A | 0 | 无官方来源；数字资产平均估值 $191,516 来自单一二手统计，未交叉验证 |

**汇总**：24 个文件全部审计完成，本批次未发现 ❌（事实性错误）。3 个文件（跨境操作/购汇额度与汇款通道、遗产规划/Power-of-Attorney、遗产规划/Trust-类型、遗产规划/数字遗产管理）来源可靠性（B维度）评为 C，共同问题是**缺官方 .gov 来源**——遗产规划类主题多为州法/律所解读，官方源本来就少，可接受但建议后续补充州法条文链接；跨境操作类应补充中国外汇管理局 safe.gov.cn 官方来源。

## 问题明细（D/C 及以下 或 有 ❓待核实项）

### 跨境操作/购汇额度与汇款通道.md（B 来源 = C）
- **问题**：全部 7 条 source_url 均为二手媒体（21财经、证券时报、新浪财经、知乎、Wise、Dealmoon），无一条指向 safe.gov.cn（国家外汇管理局）或 pbc.gov.cn（央行）官方页面。
- **建议**：补充 SAFE 官网关于个人年度 5 万美元便利化额度的官方政策文件链接。
- 核心数字（$50,000/年、2026 单笔 ¥5,000 核身新规）方向正确，但缺官方背书，暂标 ❓非 ❌。

### 遗产规划/Power-of-Attorney.md（B 来源 = C）
- **问题**：10 条来源全部是律所/顾问博客（Stimmel Law、Opelon、Lawvex 等），无 California Legislative Information（leginfo.ca.gov）官方 Probate Code 条文链接，文中却多次引用具体法条号（如 §4121、§4700、§4673）。
- **建议**：补充 leginfo.ca.gov 对应条文 URL 作为官方源，或至少注明"来源为二手解读，未直接核对法条原文"。

### 遗产规划/Trust-类型.md（B 来源 = C）
- **问题**：9 条来源均为金融机构/律所科普文章（MetLife、SmartAsset、NerdWallet 等），无 IRS（Form 1041 相关规则）或加州官方来源。文中 "2026 年 Trust 37% 税率门槛仅 $15,650" 属可核实的官方数字（IRS 税率表），但未附 irs.gov 链接核对。
- **建议**：补充 irs.gov 关于 Estates & Trusts 税率表的官方链接。

### 遗产规划/数字遗产管理.md（B 来源 = C）
- **问题**：全部来源为律所博客/行业站点，无官方来源（此主题确实缺乏联邦/州级统一监管机构，可接受度较高，但"美国人平均数字资产估值 $191,516"这类统计数字来自单一二手来源，未交叉验证，建议标注数据出处的原始调研机构）。

### 社保医保/Medicare-ABCD-Medigap.md（❓需复核，非 ❌）
- **问题**：文件 IRMAA 表（MFJ）顶档为 ">$750,000 → $680.80"，本次联网核对得到的另一信息源显示 2026 联合申报顶档阈值为 "$410,000"（总保费约 $689.90）。两个数字体系差异较大，可能是不同二手信息源对同一 CMS 官方数据的转述口径不同（单人 vs 夫妻、起始档位 vs 顶档）。
- **建议**：直接查 CMS 官方 2026 Fact Sheet（cms.gov/newsroom/fact-sheets/2026-medicare-parts-b-premiums-deductibles，文件已引用此官方链接但表格数字建议逐档重新核对原文）确认 MFJ 六档的确切区间与总保费。

### 社保医保/Social-Security-领取策略.md（❓需复核，非 ❌）
- **问题**：FRA（67岁）2026 最高月领额文件写 **$4,152**，另一独立检索结果（Fool/247wallst 6 月新文章）写 **$4,207**。62 岁（$2,969）和 70 岁（$5,181）两个数字两处信息源一致，仅 FRA 档存在约 $55 差异，可能因两篇文章发布时间不同或计算假设（35 年满额缴费）细节差异导致。
- **建议**：以 SSA 官方 Quick Calculator 或 ssa.gov/OACT 数据重新核对 FRA=67 时 2026 年最高可能benefit（本次未直接抓取 ssa.gov 原始数字，仅交叉对比二手媒体）。

## 未发现 ❌ 的说明

本批次 24 个文件均未发现可确证的事实性错误（❌）。原因：
1. 跨境税务/身份税务两个分类的文件全部引用 IRS 官方链接，且本次核对的 5 项关键数字（FBAR 罚款、Exit Tax 豁免额、ACA 400% FPL 断崖、Medicare Part B 保费、SS 62/70 岁最高额）均与官方/权威来源一致。
2. 遗产规划类文件虽然普遍缺 .gov 来源，但其内容（SECURE Act、Probate 阈值、Trust 税率结构）属于成熟稳定的既有规则，未发现与官方规则冲突之处。
3. 两处发现的是**数值口径差异**（Medicare IRMAA 顶档、SS FRA 最高额），标记为 ❓ 待复核而非 ❌，因未能锁定同一权威源头的确切数字进行一锤定音式核对。

## 覆盖缺口速评（重要，非全部）

- COBRA.md：可补充"COBRA 与 HSA 供款上限交互"细节（中）
- 跨境资产申报与处理.md：中国养老金/公积金提取美国税务定性仍是"争议领域"，可考虑单列一节收敛结论（中）
- Trust-类型.md：缺少 Trust 报税 Form 1041 的具体申报流程说明（低）
- Power-of-Attorney.md：缺少"POA 被金融机构拒收如何补救"的实操细节（低）

# 全库质量审计 — 批次 C

**日期**：2026-07-22
**范围**：家庭财务基础/（4）+ 投资品种-中国/（2）+ 投资品种-另类/（4）+ 投资品种-固定收益/（3）+ 投资品种-股票基金/（5）+ 补充-家庭财务/（2）+ 补充-账户提取赠与/（3）= 23 个文件（实际清点 22 个，无「投资品种-中国」外的其他子目录遗漏）

方法：批量模式，每文件 3-5 个最关键事实联网核对，覆盖完整维度快速评估。

## 评分矩阵

| 文件 | A事实 | C覆盖 | B来源 | D结构 | ❌数 | 最大问题 |
|------|------|------|------|------|-----|---------|
| 家庭财务基础/保险规划总纲.md | C | B | B | A | 1 | 加州车险最低额度写成 15/30/5，2025-01-01 起已升至 30/60/15 |
| 家庭财务基础/净资产追踪.md | B | A | B | A | 0 | 无重大错误，工具报价（Kubera/Tiller年费）未逐一核实 |
| 家庭财务基础/现金流预算.md | B | A | B | A | 0 | 概念型文件，无强时效数字问题 |
| 家庭财务基础/紧急基金.md | B | A | B | A | 0 | HYSA/SGOV 利率区间为估算值，未来随利率环境变化 |
| 投资品种-中国/A股-港股-Stock-Connect.md | A | B | B | A | 0 | STAR/ChiNext 门槛核实无误；市值数字未逐条核实（低优先级） |
| 投资品种-中国/中国理财产品全景.md | B | A | C | A | 0 | source_url 均为二手/中文自媒体，无官方来源（证监会/银保监) |
| 投资品种-另类/Crypto-Gold-Commodities.md | B | B | B | A | 0 | Gold ETF 费率/AUM 数字未逐条核实，覆盖对 NFT/挖矿细节较浅 |
| 投资品种-另类/Options-Income-ETF.md | B | B | C | B | 0 | source_url 为空数组，仅正文列来源名称非 URL，结构不合规 |
| 投资品种-另类/Options-策略.md | B | A | B | A | 0 | 无重大错误，Wheel年化回报区间为经验估计 |
| 投资品种-另类/REITs.md | A | A | A | A | 0 | 90% 分配要求核实无误，来源含 IRS 官方 |
| 投资品种-固定收益/Bond-Ladder-Duration.md | B | A | B | A | 0 | Duration 数值为近似区间，未逐条核实 |
| 投资品种-固定收益/Corporate-Muni-Bonds.md | B | A | B | A | 0 | 2026 Q1 收益率区间未逐条核实（时效性数字，正常） |
| 投资品种-固定收益/Treasury-Securities.md | B | A | A | A | 0 | 收益率曲线为 volatile 快照，来源含 TreasuryDirect 官方 |
| 投资品种-股票基金/DCA定投.md | B | A | B | A | 0 | Vanguard 研究数字未逐条重新核实（研究本身权威） |
| 投资品种-股票基金/Index-Fund-vs-ETF.md | B | A | B | A | 0 | 费率数字（VOO/IVV等）为近似值，未逐条核实 |
| 投资品种-股票基金/Target-Date-Fund.md | B | A | B | A | 0 | 费率对比表未逐条核实，概念覆盖完整 |
| 投资品种-股票基金/个股选股框架.md | B | B | B | A | 0 | 覆盖 Buffett/Munger 框架完整，缺 Graham 安全边际的具体计算示例 |
| 投资品种-股票基金/主动vs被动投资.md | B | A | B | A | 0 | SPIVA 数字为报告转述，未逐条比对最新一期 SPIVA |
| 补充-家庭财务/债务管理.md | B | B | D | A | 0 | source_url 为空数组，2026 房贷/学贷利率区间未逐条核实 |
| 补充-家庭财务/教育规划与风险管理.md | B | B | D | A | 0 | source_url 为空数组，学费数字/通胀率未逐条核实 |
| 补充-账户提取赠与/中国账户类型.md | B | B | D | A | 0 | source_url 为空数组，个人养老金¥12,000上限等未联网核实 |
| 补充-账户提取赠与/应税账户基础.md | B | A | D | A | 0 | source_url 为空数组，HYSA/SGOV利率为估算区间 |
| 补充-账户提取赠与/遗产赠与税-提取策略.md | B | A | D | A | 1 | QCD 2026 限额写 $105,000，IRS 通胀调整后实际为 $111,000 |

## ❌ 问题明细（含官方出处）

### 家庭财务基础/保险规划总纲.md
- ❌ **加州机动车责任险法定最低额度**：文件写"15/30/5"（$15k/$30k/$5k），该数字为 2024 年以前的旧标准。**2025-01-01 起加州最低责任险已提高为 30/60/15**（$30k bodily injury per person / $60k per accident / $15k property damage），由 SB 1107 推动，是 1967 年以来首次调整。
  - 出处：California DMV / 保险行业总结，见 [Sally Morin Law: New CA Car Insurance Liability Limits](https://www.sallymorinlaw.com/car-accidents/need-to-know-new-california-car-insurance-liability-limits/)、[A-LA Auto Insurance: California Minimum Car Insurance Requirements 2026](https://alaautoinsurance.com/blog/california-minimum-car-insurance-requirements-2026)
  - 修复建议：将文件中"加州最低：15/30/5"更新为"加州最低：30/60/15（2025-01-01 起生效，SB 1107）"，并调整"推荐水平"表述（100/300/100、250/500/250 相对新最低的倍数关系需重新表达）。

### 补充-账户提取赠与/遗产赠与税-提取策略.md
- ❌ **QCD（Qualified Charitable Distribution）2026 年限额**：文件写"$105,000/年，2026"，实际 IRS 通胀调整后 **2026 年 QCD 限额为 $111,000**（2025 年为 $108,000，2024 年为 $105,000——文件用的是过时年份的数字）。
  - 出处：IRS 通胀调整公告，综合见 [USTax Tools: QCD 2026](https://ustax.tools/tax-insights/qcd-qualified-charitable-distribution-2026/)、[Whidbey Community Foundation: What's New in the Numbers 2026](https://www.whidbeyfoundation.org/whats-new-in-the-numbers-a-checklist-for-charitable-tax-rules-in-2026/)
  - 修复建议：将"$105,000/年，2026"更正为"$111,000/年，2026"，并注明历年变化（2024 $105k → 2025 $108k → 2026 $111k）。

## 已核实无误的关键事实（供参考，未在上表标注 ❌）

- 联邦遗产税 2026 豁免额 $15,000,000（个人）/ $30,000,000（夫妻）——✅ 正确，OBBBA 永久化。[Kiplinger](https://www.kiplinger.com/taxes/new-estate-tax-exemption-amount)
- 2026 年度赠与免税额 $19,000/人 ——✅ 正确。[Q3 Advisors](https://q3adv.com/gift-tax-annual-exclusion-2026/)
- 2026 标准扣除额 MFJ $32,200 ——✅ 正确。[IRS 官方公告](https://www.irs.gov/newsroom/irs-releases-tax-inflation-adjustments-for-tax-year-2026-including-amendments-from-the-one-big-beautiful-bill)
- RMD 起始年龄 73 岁（适用 1951-1959 年出生者）——✅ 正确，SECURE 2.0。[IRS](https://www.irs.gov/retirement-plans/plan-participant-employee/retirement-topics-required-minimum-distributions-rmds)
- I Bonds 电子版年度购买上限 $10,000/人 ——✅ 正确。[TreasuryDirect](https://www.treasurydirect.gov/savings-bonds/how-much-can-i-spend-own/)
- 529 Plan 偿还学贷终身限额 $10,000/受益人 ——✅ 正确，SECURE Act。[Greenbush Financial](https://www.greenbushfinancial.com/all-blogs/529-student-loan-payments)
- REIT 须分配 ≥90% 应税收入（IRC §857(a)(1)）——✅ 正确。[IRS Instructions Form 1120-REIT](https://www.irs.gov/instructions/i1120rei)
- STAR Market 门槛 ¥50万+2年经验，ChiNext ¥10万+2年经验 ——✅ 正确。

## 结构问题汇总（D 评分较低文件）

以下 5 个文件 `source_url: []`（空数组），违反 schema 要求（应含具体 URL 列表，尽量含官方来源）：
- 投资品种-另类/Options-Income-ETF.md
- 补充-家庭财务/债务管理.md
- 补充-家庭财务/教育规划与风险管理.md
- 补充-账户提取赠与/中国账户类型.md
- 补充-账户提取赠与/应税账户基础.md

这些文件正文虽列了来源名称（如"Global X ETFs 产品说明"），但未提供可点击 URL，不满足 `source_url` 字段要求，来源可靠性（B维度）打折。

## 汇总统计

- 审计文件数：22
- ❌ 总数：2
- 评分最差 5 个文件（按结构/来源问题排序，无 F 级）：
  1. **补充-账户提取赠与/遗产赠与税-提取策略.md** — QCD 限额错误（❌）+ source_url 为空（D）
  2. **家庭财务基础/保险规划总纲.md** — 加州车险最低额度过时（❌）
  3. **补充-家庭财务/债务管理.md** — source_url 空数组，房贷/学贷利率数字未核实
  4. **补充-家庭财务/教育规划与风险管理.md** — source_url 空数组，学费/通胀数字未核实
  5. **补充-账户提取赠与/中国账户类型.md** / **应税账户基础.md**（并列）— source_url 空数组

无文件被评为 D/F 级（整体质量在及格线以上），主要问题集中在：(1) 两处具体数字过时需更正；(2) 5 个文件缺失规范的 source_url 列表。
