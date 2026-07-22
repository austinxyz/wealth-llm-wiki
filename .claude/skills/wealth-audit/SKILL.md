---
name: wealth-audit
description: 对 raw_material 文件做四维质量审计（事实准确/覆盖完整/来源可靠/结构规范），联网核对官方来源，输出评分报告到 raw_material/_audit/。用法：/wealth-audit <raw_material文件路径> 或 /wealth-audit --all
---

# wealth-audit

对 `raw_material/` 文件做质量审计。四维优先级：事实准确 > 覆盖完整 > 来源可靠 > 结构规范。

## 使用方式

```
/wealth-audit raw_material/税务基础/联邦所得税税阶-2026.md
/wealth-audit --all
```

## 单文件审计流程

1. **结构规范（D，本地）**
   - 检查 frontmatter：title / collected / source_url / freshness / valid_until 是否齐全、格式正确
   - freshness 与内容是否匹配（含年度数字却标 evergreen → 报错）
   - 缺失项列出，给出建议值

2. **来源可靠（B，本地）**
   - source_url 是否非空
   - 是否含官方域名：irs.gov / ssa.gov / medicare.gov / ftb.ca.gov / dol.gov / sec.gov / treasury.gov / healthcare.gov / coveredca.com
   - 全为二手来源（自媒体/博客/AI 生成）→ ⚠️ 建议补官方来源

3. **事实准确（A，联网，重点）**
   - 提取文件中的关键事实清单：具体数字（税率、门槛、限额、百分比、日期）和规则（资格条件、期限、流程）
   - 每个关键事实用 WebSearch/WebFetch 对照官方来源验证
   - 逐条标注：✅ 确认 / ❌ 有误（附正确值 + 出处 URL）/ ❓ 无法验证
   - 时间敏感数字注意适用年度（2026 数字用 2026 官方文档核对，不要拿 2027 新数字判错）

4. **覆盖完整（C，AI 评估）**
   - 以"资深理财顾问期待这篇主题文章讲什么"为标准，生成该主题核心知识点 checklist（10-20 条）
   - 对照文件逐条判断：已覆盖 / 部分覆盖 / 缺失
   - 缺失项按重要性排序（高/中/低）

## 输出

报告写入 `raw_material/_audit/<文件名>-audit-YYYY-MM-DD.md`：

```markdown
# 审计报告：<文件名>

**日期**：YYYY-MM-DD
**四维评分**：A 事实 <A-F> ｜ C 覆盖 <A-F> ｜ B 来源 <A-F> ｜ D 结构 <A-F>

## 事实核查
| 事实 | 状态 | 说明 |
|------|------|------|
| ... | ✅/❌/❓ | ... |

## 覆盖缺口（按重要性）
- [高] ...
- [中] ...

## 来源评估
...

## 结构问题
...

## 修复清单
1. ...
```

报告完成后询问用户：是否按修复清单直接修复原文件？确认后执行修复（修正错误数字、补缺失知识点、补 frontmatter），并更新 `collected` 为今日。

## 批量模式（--all）

1. 遍历 `raw_material/**/*.md`（跳过 `_audit/`），逐文件跑上述流程
2. 联网核对量大 → 每个文件只核对 3-5 个最关键事实，控制成本
3. 汇总表写入 `raw_material/_audit/full-audit-YYYY-MM-DD.md`：文件 × 四维评分矩阵 + 最需修复 Top 10（按 ❌ 数量和重要性排）
4. 批量模式不自动修复，只出报告

## 注意事项

- 审计不修改原文件，除非用户确认修复
- ❌ 判定必须附官方出处 URL，不凭记忆判错
- `_audit/` 报告可入库（不含个人数据）
