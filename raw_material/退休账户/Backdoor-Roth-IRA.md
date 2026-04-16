# Backdoor Roth IRA

**收集日期：** 2026-04-16

## 来源

- [Vanguard: Backdoor Roth IRA: What it is and how to set it up](https://investor.vanguard.com/investor-resources-education/article/how-to-set-up-backdoor-ira)
- [Charles Schwab: Backdoor Roth: Is It Right for You?](https://www.schwab.com/learn/story/backdoor-roth-is-it-right-you)
- [SDO CPA: Pro-Rata Rule Explained](https://www.sdocpa.com/pro-rata-rule/)
- [Altruist Wealth: Backdoor Roth IRA Guide for 2026](https://www.altruistwealthmanagement.com/backdoor-roth-ira-cheat-sheet-2026)
- [Uncle Kam: 2026 Backdoor Roth Explained](https://unclekam.com/tax-strategy-blog/2026-backdoor-roth-explained-the-complete-high-earner-guide/)
- [RGWM: Avoid the Pro Rata Rule](https://rgwealth.com/insights/how-to-avoid-the-pro-rata-rule-with-backdoor-and-mega-roth-conversions/)

## 核心概念

**Backdoor Roth IRA 是高收入者绕开 Roth IRA 收入限制的合法策略**：先向 Traditional IRA 做**不可扣除**的供款，然后立即转换（Convert）为 Roth IRA。

⚠️ 这个策略 IRS 官方不禁止，但也没有明文支持，属于"灰色但已成为行业惯例"的地带。自 2018 Tax Cuts and Jobs Act 明确允许之后更稳妥。

## 2026 Roth IRA 收入限制（Backdoor 的触发理由）

直接向 Roth IRA 供款需满足 MAGI 限制：

| 申报状态 | 完全供款 | Phase-out | 不可供款 |
|---------|---------|-----------|---------|
| Single / HoH | <$150,000 | $150,000 – $168,000 | ≥$168,000 |
| MFJ | <$236,000 | $236,000 – $242,000 | ≥$242,000 |

**超过限制者**：使用 Backdoor 策略。

## 执行步骤（标准流程）

### Step 1：向 Traditional IRA 做**不可扣除供款**

- 2026 最高 $7,500（<50）或 $8,600（≥50）
- 由于收入高，本来就**不可扣除**（见 [[Traditional-IRA]]）
- 资金应停放在 **现金或货币市场基金**，避免增值

### Step 2：转换（Convert）为 Roth IRA

- 在同一家券商内操作，几天内完成
- 原始 $7,500 基础（after-tax basis）不产生应税事件
- 任何转换期间产生的利息/增值需按普通所得税率缴税

### Step 3：报税

- 每年必须提交 **Form 8606** 报告：
  - Traditional IRA 不可扣除供款（Part I）
  - Roth Conversion（Part II）
- 错过申报 Form 8606 → 将来转换时可能被"重复征税"

## Pro-Rata Rule：最大陷阱

**IRS 把所有 Traditional IRA、SEP IRA、SIMPLE IRA 合并计算**。转换时不能"挑选"只转 after-tax 部分。

### 计算公式

```
应税比例 = 所有 IRA 的 pre-tax 余额 / (pre-tax + after-tax 合计)
         （按 12月31日 余额）
```

### 例子

- 已有 pre-tax Traditional IRA：$93,000
- 新做不可扣除供款：$7,500
- 总余额：$100,500
- 做 $7,500 转换时：
  - 应税比例 = $93,000 / $100,500 = **92.5%**
  - 应税转换金额 = $7,500 × 92.5% = **$6,938**
  - 仅 $562 免税

**教训**：如果有大额 pre-tax IRA 余额，直接 Backdoor 几乎没有税务优势。

## 规避 Pro-Rata Rule 的策略

### 策略 1：Reverse Rollover（把 pre-tax IRA 转回 401K）

- 如果当前雇主 401K 接受 incoming rollover → 把所有 pre-tax Traditional IRA 余额转入 401K
- **12月31日** 时 Traditional IRA 余额为 $0（或只剩 after-tax 基础）
- 之后 Backdoor 转换完全免税
- **这是绕开 Pro-Rata 最有效的方法**

### 策略 2：最小化增长窗口

- 供款后 **立即转换**（同周内，甚至同日）
- 现金或 MMF 停放，避免股市增值
- 转换期间增值按普通所得税率课税

### 策略 3：年初执行

- 1 月供款 + 1 月转换
- 避免"等拖到年底不小心触发 Pro-Rata"

## Mega Backdoor Roth 的区别

Backdoor Roth 是 **IRA 层面**（$7,500 年供上限）。
[[Mega-Backdoor-Roth]] 是 **401K 层面**（可多达 $47,500）。

两者独立、可并行使用。

## 配偶 Backdoor

如果配偶也超收入限制，可以同样执行：配偶自己的 Traditional IRA 不可扣除供款 → 转换。每人每年 $7,500 / $8,600。

## 存续性风险

- 国会曾在 2021 Build Back Better 法案中试图禁止 Backdoor Roth（未通过）
- 未来是否被禁不确定，但现存转换不追溯
- 主流规划共识：**只要合法就用**

## 待提炼为 wiki 条目

- [ ] `wiki/税务策略/Backdoor-Roth-IRA.md`
- [ ] `wiki/税务策略/Pro-Rata-Rule.md`
- [ ] `wiki/税务策略/Reverse-Rollover.md`
