---
name: wealth-freshness
description: 扫描 raw_material 文件的时效性：检查 valid_until 过期状态，汇总需更新文件清单。联动 wiki 条目的 freshness 继承规则。用法：/wealth-freshness [--update]
---

# wealth-freshness

扫描 `raw_material/` 文件的时效标签（`freshness` 和 `valid_until`），识别过期或即将过期的内容，生成更新清单。

## 使用方式

```
/wealth-freshness                # 只扫描，输出报告
/wealth-freshness --update       # 扫描 + 自动更新 annual 类文件的日期
```

## Freshness Schema 回顾

每个 `raw_material/**/*.md` 的 frontmatter 必须含：

```yaml
---
freshness: <evergreen | annual | volatile>
valid_until: YYYY-MM-DD          # annual/volatile 必填；evergreen 留空
---
```

| freshness | 含义 | 例子 | valid_until |
|-----------|------|------|-------------|
| `evergreen` | 概念性知识，基本不变 | 4% 规则、Bucket Strategy | 留空 |
| `annual` | 每年固定更新 | 税阶、标准扣除、IRA/401K limit | 当年 12-31 |
| `volatile` | 随政策随时可能变 | OBBBA 新规、购汇额度 | 收集日 + 6 个月 |

## 扫描流程

### 1. 遍历与验证（本地，快速）

- 递归扫描 `raw_material/**/*.md`（跳过 `_audit/` 目录）
- 对每个文件验证 frontmatter：
  - `freshness` 字段存在且值合法 → 标 ✅
  - `freshness` 缺失或非法值 → 标 ⚠️（缺失）
  - `evergreen` 无 `valid_until`（或为空）→ ✅
  - `annual` 或 `volatile` 无 `valid_until` → 标 ⚠️（缺失日期）
  - `valid_until` 格式非法（非 YYYY-MM-DD）→ 标 ❌（格式错误）

### 2. 过期检查（本地，关键）

对每个有有效 `valid_until` 的文件：

- 若 `valid_until` < 今天 → 标 ❌ **已过期**
- 若 `valid_until` = 今天 → 标 ⏰ **即将过期**（<= 7 天内）
- 若 `valid_until` 在 7-30 天内 → 标 ⏱ **近期过期**（7-30 天）
- 若 `valid_until` > 30 天 → ✅ **有效**

### 3. Wiki 级联检查（本地）

扫描 `wiki/` 条目的 `source` 字段，找出依赖关系：

- 若 wiki 条目 A 的 `source: [[raw_material/x/y]]`，且 y 已过期
- 则标注 wiki 条目 A 的状态应变为 `outdated`

## 输出报告

报告写入 `raw_material/_audit/freshness-YYYY-MM-DD.md`：

```markdown
# 时效扫描报告

**扫描日期**：YYYY-MM-DD
**扫描覆盖**：raw_material/ 共 N 个文件

## 统计摘要

| 状态 | 数量 | 占比 |
|------|------|------|
| ✅ 有效（valid_until 未过期 或 evergreen） | X | X% |
| ⏰ 即将过期（<= 7 天）| Y | Y% |
| ⏱ 近期过期（7-30 天）| Z | Z% |
| ❌ 已过期（valid_until < 今天）| W | W% |
| ⚠️ 元数据缺失或格式错 | V | V% |

## 已过期文件（❌ 需立即更新）

| 文件 | 过期天数 | freshness | 最后有效日 |
|------|---------|-----------|----------|
| raw_material/xxx | 45 | annual | 2025-12-31 |

**建议操作**：
1. 用 WebFetch 查阅源文件（source_url）的最新版本
2. 若内容无实质变化 → 更新 valid_until = 新日期
3. 若内容有变化 → 更新正文内容 + collected 日期
4. 用 `/wealth-audit <文件>` 做事实核查确认
5. 用 `/wealth-sync <wiki条目>` 更新依赖的 wiki 条目

## 即将过期文件（⏰⏱ 建议提前准备）

按 valid_until 升序排列，优先级递减：

| 文件 | 剩余天数 | freshness | 将过期日 |
|------|---------|-----------|---------|
| raw_material/yyy | 3 | volatile | 2026-07-25 |
| raw_material/zzz | 12 | annual | 2026-08-03 |

## 元数据问题（⚠️ 结构规范检查）

| 文件 | 问题 | 修复建议 |
|------|------|---------|
| raw_material/aaa | freshness 缺失 | 补充 `freshness: <evergreen \| annual \| volatile>` |
| raw_material/bbb | valid_until 格式错 "2026-13-45" | 改为有效日期 YYYY-MM-DD |
| raw_material/ccc | volatile 但 valid_until 为空 | 补充日期 |

## Wiki 级联影响（仅当母文件过期时出现）

| Wiki 条目 | 来源 raw_material | 状态建议 |
|-----------|-----------------|---------|
| wiki/账户类型/HSA | raw_material/accounts/HSA-2025 (❌过期) | 应改为 outdated |
```

## 使用 --update 参数

当传入 `--update` 时，skill 在生成报告后，**自动**对满足以下条件的文件更新日期：

1. **仅限 `annual` 类型**（已过期的 `annual` 文件）
   - 若当前年份 X 已来临，且文件的 `valid_until` 仍为去年 `X-1-12-31`
   - 自动改为 `valid_until: X-12-31`
   - 同时更新 `collected` 字段为"已由 /wealth-freshness 自动刷新"说明

2. **不修改 `evergreen`**（它们没有 valid_until）

3. **不修改 `volatile`**（需要人工核查内容后再更新）

更新后汇报：

```
✅ 自动更新完成：3 个 annual 类文件
- raw_material/税务基础/联邦税阶-2026.md: valid_until 2025-12-31 → 2026-12-31
- raw_material/...
```

报告仍写入 `raw_material/_audit/freshness-YYYY-MM-DD.md`。

## 注意事项

- 扫描不修改原文件（除 `--update` 自动刷新 annual 类）
- `evergreen` 文件无 `valid_until` 时正常，不报错
- 若 source_url 无法访问，不影响扫描逻辑（这是 `/wealth-audit` 的职责）
- 过期文件的内容可能仍然准确（如数字不变），但标记过期是为了定期核查
- Wiki 条目的 `freshness` 继承规则：若有多个 source，则取最不稳定档（volatile > annual > evergreen）
