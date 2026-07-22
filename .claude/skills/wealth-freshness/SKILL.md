---
name: wealth-freshness
description: 扫描知识库时效性——按 frontmatter 的 valid_until 列出已过期/即将过期的 raw_material，反查受影响 wiki 条目；--update 模式联网抓取最新官方数据并更新。用法：/wealth-freshness 或 /wealth-freshness --update
---

# wealth-freshness

知识时效扫描与更新。年度节奏：每年 1 月 IRS 发布新数字后跑 `--update`；平时随手跑扫描。

## 使用方式

```
/wealth-freshness
/wealth-freshness --update
```

## 扫描流程（默认，纯本地）

1. **扫 raw_material frontmatter**（跳过 `_audit/`）：
   - 🔴 已过期：`valid_until` < 今天
   - 🟡 即将过期：今天 ≤ `valid_until` < 今天 + 30 天
   - ⚪ 无标注：缺 freshness 或（annual/volatile 却缺 valid_until）
   - 🟢 有效：其余

2. **跨层关联**：对每个 🔴/🟡 文件，Grep wiki 的 `source:` 字段找出引用它的 wiki 条目，列受影响清单

3. **报告**写入 `raw_material/_audit/freshness-YYYY-MM-DD.md`：

```markdown
# 时效扫描 YYYY-MM-DD

## 🔴 已过期（N）
| 文件 | valid_until | freshness | 受影响 wiki |
|------|------|------|------|

## 🟡 30 天内到期（N）
...

## ⚪ 无标注（N）
...
```

4. 终端输出摘要（🔴/🟡/⚪ 数量 + 文件清单），并提示：`--update` 可执行更新。

## 更新流程（--update）

先跑扫描，然后对每个 🔴 文件逐个处理：

1. 按 frontmatter `source_url` 用 WebFetch/WebSearch 抓最新官方数据
2. 对比新旧，列出变化点，格式：
   ```
   📄 raw_material/税务基础/联邦所得税税阶-2026.md
   - 标准扣除 MFJ: $32,200 → $33,100（2027）
   - 37% 档 MFJ 起点: $768,701 → $789,600（2027）
   来源：https://www.irs.gov/...
   ```
3. **等用户确认**后执行：
   - 更新正文数字与适用年度
   - frontmatter：`collected` 改今日；`valid_until` 顺延（annual → 新年度 12-31；volatile → 今日 + 6 个月）；`tax_year` 更新
   - 文件名含年份的（如 `联邦所得税税阶-2026.md`）询问是否重命名为新年度
4. 更新完成后列出该文件的受影响 wiki 条目，提示逐个运行 `/wealth-sync <wiki条目>` 传播

## 注意事项

- 每个文件更新必须用户确认，不批量静默改
- 官方数据未发布（如 IRS 还没出新年数字）→ 标记"待官方发布"，不强行更新
- ⚪ 无标注文件提示补 frontmatter（可转 /wealth-audit 处理）
- 不做 cron 自动化，手动触发
