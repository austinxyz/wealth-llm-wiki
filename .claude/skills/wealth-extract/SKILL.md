---
name: wealth-extract
description: 从 raw_material 文章中提炼新的 wiki 条目。将原始调研内容转化为结构化 Obsidian 知识条目，自动补全 WikiLinks 和 frontmatter。用法：/wealth-extract <raw_material文件路径>
---

# wealth-extract

将 `raw_material/` 中的文章提炼为 `wiki/` 下的结构化知识条目。

## 使用方式

```
/wealth-extract raw_material/国内外理财对比调研.md
```

## 执行步骤

1. **读取原文**：使用 Read 工具读取指定的 raw_material 文件全文

2. **识别概念**：扫描文章，提取所有独立知识概念，每个概念对应一个 wiki 条目：
   - 账户类型（如：HSA、529、Brokerage Account）
   - 税务规则（如：NIIT、AMT、资本利得税率）
   - 投资品种（如：REITs、债券梯子）
   - 退休规划概念
   - 中美对比知识点

3. **检查已有条目**：对每个概念，用 Glob 检查 `wiki/` 下是否已存在同名或同义文件
   - 已存在 → 跳过，提示用户用 `/wealth-sync` 更新
   - 不存在 → 进入下一步新建

4. **确定分类**：根据概念类型，确定放入哪个子目录：
   - `wiki/账户类型/`
   - `wiki/税务策略/`
   - `wiki/投资品种/`
   - `wiki/退休规划/`
   - `wiki/中美对比/`

5. **生成条目**：为每个新概念创建 wiki 文件，严格使用以下 frontmatter schema：

```yaml
---
title: <概念名称>
category: <账户类型 | 税务策略 | 投资品种 | 退休规划 | 中美对比>
tags: [tag1, tag2, tag3]
source: "[[raw_material/<来源文件名>]]"
updated: <今日日期 YYYY-MM-DD>
status: draft
---
```

正文结构：

```markdown
## 定义
一句话说清楚这是什么

## 核心要点
- 要点1（来自原文的具体信息）
- 要点2
- 要点3

## 与其他概念的关系
- [[已有wiki条目]]：关系说明

## 参考来源
- [[raw_material/<来源文件>]]
```

6. **补全 WikiLinks**：在"与其他概念的关系"中，检查 `wiki/` 目录下已有哪些条目，将相关联的已有条目用 `[[条目名]]` 格式链接

7. **更新 MOC**：在对应分类的 `00-MOC-<分类>.md` 文件中，追加新条目的链接行：
   ```
   - [[新条目名]] — 一句话简介
   ```

8. **汇报结果**：告知用户：
   - 新建了哪些条目（文件路径）
   - 跳过了哪些（已存在）
   - 建议用 `/wealth-sync` 更新的条目列表

## 注意事项

- 条目初始 status 设为 `draft`，经人工确认后改为 `stable`
- 不要修改 raw_material 原文
- 一个概念一个文件，保持原子性
- 文件名使用英文或拼音（Obsidian 跨平台兼容性更好）
