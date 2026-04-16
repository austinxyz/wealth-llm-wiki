# Wealth Wiki 知识库重构设计文档

**日期：2026-04-16 | 项目：wealth | 状态：待实施**

---

## 1. 目标

将当前 `wealth/` 目录改造为以 Karpathy LLM Wiki 为灵感的三层财富规划知识库，支持 Obsidian 深度集成（Dataview、WikiLinks、Templater），并通过 Claude Skills 实现知识提炼与策略生成的半自动化流程。

---

## 2. 目录结构

```
wealth/
├── raw_material/          # 原始文章、调研、外部资料（不含个人数据）
│   ├── 中美财富管理体系对比分析.md
│   ├── 国内外理财对比调研.md
│   ├── 年金知识与是否需要的分析.md
│   ├── 投资策略建议.md
│   ├── 理财思维导图.md
│   ├── 豆包对投资策略建议的校对.md
│   └── 豆包的校对.md
│
├── wiki/                  # 提炼后的结构化知识库（Obsidian vault 根）
│   ├── 00-MOC-总览.md
│   ├── 账户类型/
│   │   ├── 00-MOC-账户类型.md
│   │   ├── Roth-IRA.md
│   │   ├── 401K.md
│   │   ├── Betterment.md
│   │   └── SGOV.md
│   ├── 税务策略/
│   │   ├── 00-MOC-税务策略.md
│   │   ├── 税损收割.md
│   │   └── Wash-Sale-Rule.md
│   ├── 投资品种/
│   │   ├── 00-MOC-投资品种.md
│   │   ├── ETF总览.md
│   │   ├── 杠杆ETF.md
│   │   └── IUL.md
│   ├── 退休规划/
│   │   ├── 00-MOC-退休规划.md
│   │   ├── 三段式退休框架.md
│   │   └── 年金.md
│   └── 中美对比/
│       ├── 00-MOC-中美对比.md
│       └── 双边资产策略.md
│
├── output/                # 含个人数据，.gitignore 忽略，不入库
│   ├── 我的现金和投资.md
│   ├── 我的退休基金.md
│   ├── 投资持仓快照.md
│   ├── 投资执行日志.md
│   ├── 投资优化分析.md
│   ├── 投资优化计划.md
│   ├── runway-calculation.md
│   ├── 三段式退休规划.md
│   ├── 我的个人投资策略.md
│   ├── 我的退休基金投资策略建议.md
│   ├── IUL分析报告.md
│   ├── chen.md
│   └── 换工作401K_Rollover策略.md
│
├── prompt/
├── docs/
└── .gitignore             # 新增：忽略 output/
```

---

## 3. Wiki 条目 Schema

每个 `wiki/` 条目使用统一 frontmatter，支持 Dataview 查询：

```yaml
---
title: <条目名称>
category: <账户类型 | 税务策略 | 投资品种 | 退休规划 | 中美对比>
tags: [tag1, tag2]
source: "[[raw_material/来源文件]]"
updated: YYYY-MM-DD
status: <draft | stable | outdated>
---
```

### 条目正文标准模板

```markdown
## 定义
一句话说清楚这是什么

## 核心要点
- 要点1
- 要点2

## 与其他概念的关系
- [[相关条目]]：关系说明

## 参考来源
- [[raw_material/xxx]]
```

### Dataview 查询示例（用于 MOC 页）

````markdown
```dataview
TABLE updated, status, tags
FROM "wiki/账户类型"
WHERE status != "outdated"
SORT updated DESC
```
````

---

## 4. Claude Skills

### 4.1 `wealth-extract`

**用途**：将 `raw_material` 文章提炼为新的 wiki 条目

**流程**：
1. 读取指定 raw_material 文件
2. 识别涉及的知识概念（账户、税务规则、投资品种等）
3. 检查 `wiki/` 是否已有对应条目
   - 无 → 新建条目，套用标准模板和 frontmatter
   - 有 → 提示改用 `wealth-sync`
4. 自动补全 `[[WikiLinks]]` 指向已有条目
5. 更新对应 MOC 页的链接列表

**调用示例**：
```
/wealth-extract raw_material/国内外理财对比调研.md
```

---

### 4.2 `wealth-sync`

**用途**：用 raw_material 新增内容更新已有 wiki 条目

**流程**：
1. 读取指定 wiki 条目及其 `source` 中的 raw_material
2. 对比差异，提取新增知识点
3. 追加到条目正文，不覆盖已有内容
4. 更新 frontmatter 的 `updated` 和 `status`
5. 输出变更摘要供用户确认

**调用示例**：
```
/wealth-sync wiki/账户类型/Roth-IRA.md
```

---

### 4.3 `wealth-advise`

**用途**：结合 wiki 通用知识和 output 个人数据，生成针对性策略建议

**流程**：
1. 用户指定主题（如"税务优化"、"Roth IRA配置"）
2. 自动读取相关 `wiki/` 条目（知识层）
3. 自动读取相关 `output/` 文件（个人数据层）
4. 综合两者生成具体建议
5. 输出写入 `output/` 下的策略文件或更新已有文件

**调用示例**：
```
/wealth-advise 税务优化
/wealth-advise Roth-IRA配置
/wealth-advise 退休规划
```

---

## 5. 数据流

```
raw_material ──[wealth-extract]──→ wiki（新条目）
raw_material ──[wealth-sync]────→ wiki（更新条目）
wiki + output ──[wealth-advise]──→ output（策略建议）
```

---

## 6. Git 隐私保护

`.gitignore` 新增内容：
```
output/
```

`raw_material/` 和 `wiki/` 正常入库，`output/` 仅本地保存。

---

## 7. 实施阶段

| 阶段 | 内容 |
|------|------|
| Phase 1 | 创建目录结构，迁移现有文件，新增 `.gitignore` |
| Phase 2 | 初始化 wiki：MOC 页 + 核心条目（手动或用 wealth-extract） |
| Phase 3 | 编写 `wealth-extract` skill |
| Phase 4 | 编写 `wealth-sync` skill |
| Phase 5 | 编写 `wealth-advise` skill |
