# CLAUDE.md

本文件指导 Claude Code 在 `wealth-llm-wiki` 项目中的工作方式。

## 项目核心概念

三层知识库：**原始资料 → 提炼知识 → 个人策略**。

| 目录 | 入库 | 内容性质 |
|------|------|---------|
| `raw_material/` | ✅ | 通用知识、调研文章，不含个人数据 |
| `wiki/` | ✅ | 提炼后的 Obsidian 知识条目，带统一 frontmatter |
| `output/` | ❌ `.gitignore` | 个人持仓、金额、策略分析（敏感） |

## 硬性规则

### 隐私

- **永远不要**把含个人金额、账户余额、持仓快照的内容放入 `raw_material/` 或 `wiki/`
- 含个人数据的分析产物一律写入 `output/`（已被 `.gitignore`）
- 在 `wiki/` 条目里使用通用术语和示例，不引用用户具体持仓

### Wiki 条目 Schema（严格遵守）

每个 `wiki/<分类>/*.md` 必须有统一 frontmatter：

```yaml
---
title: <条目名称>
category: <账户类型 | 税务策略 | 投资品种 | 退休规划 | 中美对比>
tags: [tag1, tag2]
source: "[[raw_material/来源文件名]]"
updated: YYYY-MM-DD
status: <draft | stable | outdated>
---
```

正文使用4段固定结构：

```markdown
## 定义
一句话说清楚这是什么。

## 核心要点
- 要点1
- 要点2

## 与其他概念的关系
- [[相关条目]]：关系说明

## 参考来源
- [[raw_material/xxx]]
```

### 命名约定

- 条目文件名：英文或易读中文（`Roth-IRA.md`、`税损收割.md`）
- 用连字符 `-` 替代空格（`Wash-Sale-Rule.md`）
- MOC 页命名：`00-MOC-<分类>.md`（前缀 `00-` 保证排序靠前）

### WikiLinks 和 Dataview

- 条目引用用 `[[条目名]]`（Obsidian 格式）
- MOC 页包含 Dataview 查询块：
  ```dataview
  TABLE updated, status, tags
  FROM "wiki/<分类>"
  WHERE file.name != "00-MOC-<分类>"
  SORT updated DESC
  ```

## 三个配套 Skills 的使用

| Skill | 何时触发 |
|-------|---------|
| `/wealth-extract <raw_material文件>` | 有新的调研文章要提炼成 wiki 条目 |
| `/wealth-sync <wiki条目>` | 已有 wiki 条目的来源 raw_material 有更新 |
| `/wealth-advise <主题>` | 需要基于个人数据生成针对性策略建议 |

详细工作流见 `~/.claude/skills/wealth-*/SKILL.md`。

## 工作流提示

### 当用户说"提炼 X 文章到 wiki"

1. 优先使用 `/wealth-extract` skill
2. 检查 `wiki/` 是否已有该概念条目
3. 已有则提示改用 `/wealth-sync`

### 当用户说"给我 X 方面的建议"

1. 用 `/wealth-advise <主题>` skill
2. 同时读取 wiki（通用知识）和 output（个人数据）
3. 生成的建议默认写入 `output/`，不要污染 wiki

### 当用户提到持仓/金额/账户余额

这些属于个人数据，应放在 `output/`，不要放在 `wiki/` 或 `raw_material/`。

## Git 行为

### 推送前检查

每次 `git add` 后验证 `output/` 不在 staged 列表：

```bash
git status | grep output/ && echo "⚠️ 停止：output/ 不应入库"
```

### 不要做的操作

- ❌ 不要 `git add output/`
- ❌ 不要把 `output/` 下的文件复制到 `wiki/`
- ❌ 不要在 `wiki/` 里写具体金额（如"$100,000"、"我有..."）
- ❌ 不要跳过 `.gitignore` 用 `git add -f`

## Obsidian 兼容性

- 文件用 UTF-8 编码
- 用 `[[WikiLinks]]` 而不是 Markdown `[链接](url)` 做内部引用
- Dataview 查询语法必须准确（```dataview 代码块，不是 ```dataview-js）
- `.obsidian/workspace.json` 被忽略（每台机器独立的标签页状态）

## 目录结构速查

```
wealth/
├── raw_material/       公开资料，入库
├── wiki/               结构化知识，入库
│   ├── 00-MOC-总览.md
│   ├── 账户类型/
│   ├── 税务策略/
│   ├── 投资品种/
│   ├── 退休规划/
│   └── 中美对比/
├── output/             个人数据，不入库
├── docs/superpowers/   设计文档和实施计划
├── prompt/             临时 prompt 文件
└── .obsidian/          Obsidian vault 配置
```
