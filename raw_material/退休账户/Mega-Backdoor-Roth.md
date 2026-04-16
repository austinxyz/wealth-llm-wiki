# Mega Backdoor Roth

**收集日期：** 2026-04-16

## 来源

- [Fidelity: What is a mega backdoor Roth?](https://www.fidelity.com/learning-center/personal-finance/mega-backdoor-roth)
- [IRS: 401(k) limit increases to $24,500 for 2026](https://www.irs.gov/newsroom/401k-limit-increases-to-24500-for-2026-ira-limit-increases-to-7500)（官方）
- [SDO CPA: Mega Backdoor Roth 2026: $47,500+](https://www.sdocpa.com/roth-vs-mega-backdoor-roth/)
- [Commons LLC: Navigating the Mega Backdoor Roth Limits 2026](https://www.commonsllc.com/insights/mega-backdoor-roth-limits-2026)
- [Carry: The Mega Backdoor Roth Explained](https://carry.com/learn/mega-backdoor-roth-explained)
- [NerdWallet: Mega Backdoor Roths](https://www.nerdwallet.com/retirement/learn/mega-backdoor-roths-work)
- [Eide Bailly: How to Get More Roth Dollars into Your 401(k) in 2026](https://www.eidebailly.com/insights/alerts/2026/maximize-roth-401k)

## 核心概念

**Mega Backdoor Roth 是在 401K 内** 通过 **after-tax 非 Roth 供款 + In-Plan 转换** 的方式，每年把最多 $47,500+ 额外资金放入 Roth 口袋。与 [[Backdoor-Roth-IRA]]（IRA 层级）是不同的玩法，两者可叠加使用。

## 2026 401K 总量限制结构

401K 年度"总供款限额"分三个层级：

```
┌─────────────────────────────────────────────────────────────┐
│  2026 401K 总限额 = $72,000（<50）                          │
│                     $80,000（50-59, 64+）                   │
│                     $83,250（60-63, Super Catch-up）        │
├─────────────────────────────────────────────────────────────┤
│ ① 员工 Deferral（pre-tax 或 Roth 401K）                      │
│    $24,500（+$8,000 catch-up 50-59/64+）                    │
│    （+$11,250 super catch-up 60-63）                         │
├─────────────────────────────────────────────────────────────┤
│ ② 雇主 Match / Profit Sharing                                 │
│    由雇主决定（常见 3-7%）                                     │
├─────────────────────────────────────────────────────────────┤
│ ③ After-tax 非 Roth 供款（Mega Backdoor 就装这个层）           │
│    = 总限额 − ① − ②                                           │
│    最多 $47,500（如 ①=$24,500, ②=$0）                        │
└─────────────────────────────────────────────────────────────┘
```

## 执行要求（双重门槛）

计划必须满足**两个条件**：

1. **允许 after-tax 非 Roth 供款**（非所有 401K 计划都开放）
2. **允许 In-Plan Roth Conversion 或 In-Service Distribution to Roth IRA**（否则 after-tax 只能留在 401K 内作应税账户用）

查看 Summary Plan Description（SPD）或询问 HR/Plan Administrator。

## 执行步骤

### Step 1：拉满员工 Deferral
先存满 pre-tax 或 Roth 401K 的 $24,500（+catch-up if applicable）。

### Step 2：计算 After-tax 空间
```
After-tax 空间 = $72,000 − $24,500 − 雇主 match 年化估算
              ≈ $40,000 – $47,500（取决于 match）
```

### Step 3：开启 After-tax 供款
在 401K 门户里设置额外的 after-tax payroll deduction。

### Step 4：立即转换为 Roth

两种方式，取决于计划支持哪个：

**方式 A：In-Plan Roth Conversion**
- 把 after-tax 部分"转换"为 Roth 401K（同账户内）
- 优点：无需离开 401K
- 缺点：Roth 401K 仍需 RMD（73 岁起）

**方式 B：In-Service Rollover to Roth IRA**
- 把 after-tax 部分"取出"直接 Roll 到外部 Roth IRA
- 优点：Roth IRA **无 RMD**，更灵活
- 缺点：需要有允许 in-service withdrawal 的计划

**关键**：after-tax 部分 + any earnings 都会转换。转换时 earnings 按普通所得税率课税。**越早转换（earnings 越少），税越少**。

## 与 Backdoor Roth IRA 的叠加

| 项目 | Backdoor Roth IRA | Mega Backdoor Roth |
|------|-----------------|-------------------|
| 载体 | Traditional IRA → Roth IRA | 401K after-tax → Roth |
| 2026 上限 | $7,500 / $8,600 | 最高 $47,500 |
| 需要什么 | 任何人（有 earned income） | 401K 计划支持 |
| 是否可叠加 | ✅ 两者独立 | ✅ 同年都可做 |

一个高收入者理论上可以在一年内将最多 **$55,000 +（IRA + 401K Mega）** 的资金放入 Roth 空间。

## 风险与注意事项

- **earnings 按普通税率课税**：设置定期（每月/每季）自动转换降低累积
- **少数公司不允许**：Fortune 500 中约 40-50% 允许
- **5 Year Rule**：Roth conversion 后 5 年内提取 earnings 有 10% 罚款（59.5 前）
- **Roth 401K 转 Roth IRA 时**：最好在离职后做，在职期间 in-service 可能受限
- **中低收入者不值得**：收入低时应优先填满 pre-tax 401K 降低当年税基

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/Mega-Backdoor-Roth.md`
- [ ] `wiki/税务策略/After-tax-401K.md`
- [ ] `wiki/税务策略/In-Plan-Roth-Conversion.md`
