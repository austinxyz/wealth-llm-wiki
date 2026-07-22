# 时效扫描 2026-07-22

扫描范围：`raw_material/**/*.md`（跳过 `_audit/`），共 80 个文件。

## 🔴 已过期（1）

| 文件 | valid_until | freshness | 受影响 wiki |
|------|------|------|------|
| raw_material/税务基础/加州所得税税阶.md | 2025-12-31 | annual | [[wiki/税务策略/加州所得税]] |

## 🟡 30 天内到期（0）

无。

## ⚪ 无标注（0）

无（所有文件均含 freshness；evergreen 文件的 valid_until 留空属正常，不计入⚪）。

## 🟢 有效（79）

其余 79 个文件 valid_until 均晚于 2026-08-21（今日 + 30 天）或为 evergreen，判定有效，此处不逐一列出。

## 下一步

- 🔴 文件可运行 `/wealth-freshness --update` 联网核对加州 2026 年度税阶官方数据后更新。
- 更新完成后对 `wiki/税务策略/加州所得税.md` 运行 `/wealth-sync` 传播变更。
