/# wealth-llm-wiki

个人财富规划知识库，灵感来自 [Karpathy 的 LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)，采用三层架构：**原始资料 → 提炼知识 → 个人策略**。

## 架构

```
wealth/
├── raw_material/   原始调研文章（通用知识，入库）
├── wiki/           Obsidian 知识库，结构化条目（入库）
└── output/         个人数据与策略分析（.gitignore，不入库）
```

### 三层的职责

| 层 | 内容 | 是否入库 | 示例 |
|----|------|---------|------|
| `raw_material/` | 原始文章、调研报告、外部资料 | ✅ | 中美财富管理对比分析、年金知识调研 |
| `wiki/` | 提炼后的原子化知识条目，带 frontmatter | ✅ | Roth IRA、税损收割、SGOV、杠杆 ETF |
| `output/` | 个人持仓、执行日志、策略建议（含敏感数据） | ❌ | 投资持仓快照、退休规划、Runway 测算 |

## Wiki 结构

```
wiki/
├── 00-MOC-总览.md              顶层 Map of Content
├── 账户类型/                    Roth IRA, 401K, SGOV, Betterment
├── 税务策略/                    税损收割, Wash Sale Rule
├── 投资品种/                    ETF总览, 杠杆ETF, IUL
├── 退休规划/                    三段式退休框架, 年金
└── 中美对比/                    双边资产策略
```

每个条目使用统一 frontmatter 支持 [Obsidian Dataview](https://blacksmithgu.github.io/obsidian-dataview/)：

```yaml
---
title: Roth IRA
category: 账户类型
tags: [退休账户, 免税增值]
source: "[[raw_material/年金知识与是否需要的分析]]"
updated: 2026-04-16
status: stable
---
```

## Obsidian 使用

1. 用 Obsidian 打开 `wealth/` 目录作为 vault
2. 安装 Dataview 插件即可查询各条目
3. 主题已配置为 Blue Topaz（可在 `.obsidian/themes/` 调整）
4. 每台机器的标签页状态（`workspace.json`）不同步

## Claude Skills（配套自动化）

本仓库配套三个 Claude Code skill（存放在 `~/.claude/skills/`）：

| Skill | 用途 | 输入 | 输出 |
|-------|------|------|------|
| `/wealth-extract` | 从 raw_material 提炼新 wiki 条目 | `raw_material/<文件>.md` | 新建 `wiki/<分类>/<条目>.md` + 更新 MOC |
| `/wealth-sync` | 用 raw_material 新内容更新已有条目 | `wiki/<分类>/<条目>.md` | 追加新知识点到现有条目 |
| `/wealth-advise` | 结合 wiki 知识和 output 数据生成策略 | 主题名（如"税务优化"） | 针对性策略建议（可写入 output/） |

### 数据流

```
raw_material ──[wealth-extract]──→ wiki（新条目）
raw_material ──[wealth-sync]────→ wiki（更新）
wiki + output ──[wealth-advise]──→ output（策略）
```

## 隐私保护

- `output/` 完全不入库（含持仓金额、账户明细、个人规划）
- `.obsidian/workspace.json` 不入库（每台机器独立）
- `.claude/settings.local.json` 不入库（本地 Claude 配置）

## 设计文档

- [设计规范](docs/superpowers/specs/2026-04-16-wealth-wiki-design.md)
- [实施计划](docs/superpowers/plans/2026-04-16-wealth-wiki.md)
