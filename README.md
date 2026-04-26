# 在美华人理财规划知识库

面向在美华人的财富规划知识体系，灵感来自 [Karpathy 的 LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)。包含 100+ 结构化知识条目、虚构家庭案例文章、空白财务档案模板，以及配套 Claude Code AI 分析工具。

## 目录结构

```
wealth/
├── wiki/              结构化知识条目（账户类型、税务策略、退休规划、中美对比等）
├── raw_material/      原始调研文章（知识条目的来源）
├── publish/           虚构家庭案例文章（演示知识如何落地决策）
├── templates/         空白财务档案模板（填写后用于 AI 分析）
├── output/            个人数据与建议（.gitignore，不入库）
└── .claude/skills/    wealth-advise AI 分析 skill
```

| 目录 | 是否入库 | 内容性质 |
|------|---------|---------|
| `wiki/` | ✅ | 通用知识，无个人数据 |
| `raw_material/` | ✅ | 原始调研文章 |
| `publish/` | ✅ | 虚构家庭案例，无个人数据 |
| `templates/` | ✅ | 空白模板，无个人数据 |
| `output/` | ❌ | 个人持仓、策略建议（敏感） |

## 快速开始

### 前置条件
- 安装 [Claude Code](https://claude.ai/code)（Anthropic 官方 CLI）
- 有 GitHub 账号（推荐 Fork，见下）

### 推荐：Fork 这个仓库

**强烈建议 Fork 而不是直接克隆。** Fork 之后你拥有自己的副本，可以：
- 在自己的 GitHub 上保留完整知识库备份
- 将来同步上游更新（新增的 wiki 条目和文章）
- 按需添加自己的笔记或修改

**Fork 步骤：**
1. 点击 GitHub 页面右上角 **Fork** 按钮
2. 选择你自己的账号，完成 Fork
3. 克隆你 Fork 后的仓库：

```bash
git clone https://github.com/<你的用户名>/wealth-llm-wiki.git
cd wealth-llm-wiki
```

### 建立本地 output 目录

`output/` 是你的私人工作空间，已被 `.gitignore` 忽略，**不会上传到 GitHub**。克隆后手动创建：

```bash
mkdir output
cp templates/基本信息.md output/基本信息.md
cp templates/收入与税务.md output/收入与税务.md
cp templates/账户与资产.md output/账户与资产.md
cp templates/财务目标.md output/财务目标.md
# 用任意编辑器填写你的真实数据
```

### 运行 AI 分析

```bash
claude  # 启动 Claude Code
```

在 Claude Code 中输入：

```
/wealth-advise 退休规划
```

更多 prompt 见 [publish/prompt-guide.md](publish/prompt-guide.md)。

### 同步上游更新

```bash
git remote add upstream https://github.com/austinxyz/wealth-llm-wiki.git
git fetch upstream
git merge upstream/main
```

## 用 Obsidian 浏览知识库

整个仓库是一个 [Obsidian](https://obsidian.md) vault，克隆后直接用 Obsidian 打开即可获得最佳阅读体验。

1. 下载并安装 [Obsidian](https://obsidian.md)（免费）
2. 打开 Obsidian → **Open folder as vault** → 选择克隆下来的 `wealth/` 目录
3. 首次打开时点击 **Trust author and enable plugins**

**可以做什么：**
- 浏览 `wiki/` — 按分类查阅 100+ 知识条目，每个分类有 `00-MOC-xxx.md` 总览页
- 阅读 `publish/` — 虚构家庭案例文章，WikiLink 可直接跳转到 wiki 条目
- 图谱视图（Ctrl+G）— 可视化知识关联
- 查看 `output/` — AI 生成的个人建议，同样支持 WikiLink 跳转
- MOC 页的 Dataview 查询需安装 **Dataview 插件**（Settings → Community Plugins）

## 案例文章

三个虚构人物，演示如何将 wiki 知识转化为实际决策：

| 人物 | 情况 | 系列 |
|------|------|------|
| 小陈 | 30岁，H1B，刚入职，从零建立体系 | [新手入门](publish/新手入门/) |
| 阿明 | 50岁，绿卡，有积累，规划退休 | [退休规划](publish/退休规划/) |
| 王女士 | 55岁，绿卡，中美双边，考虑回国 | [中美双边](publish/中美双边/) |

## Wiki 结构

```
wiki/
├── 00-MOC-总览.md
├── 账户类型/        401K, Roth IRA, HSA, Traditional IRA, Solo 401K, 529, Betterment...
├── 税务策略/        税损收割, Wash Sale, Backdoor Roth, Mega Backdoor, 资本利得税...
├── 投资品种/        ETF, 杠杆ETF, REITs, Bond Ladder, Target Date Fund...
├── 退休规划/        4%规则, 三段式框架, Sequence Risk, Social Security, Medicare...
├── 中美对比/        FBAR, FATCA, Exit Tax, 双边资产策略, 退休回国税务...
├── 遗产规划/        Revocable Trust, Beneficiary Designation...
├── 股权激励/        RSU, ESPP...
├── 保险规划/        Term Life, Disability, Umbrella, 长护险...
└── 家庭财务/        50-30-20规则, 紧急基金, 分层现金管理...
```

每个条目使用统一 frontmatter，支持 Obsidian Dataview 查询：

```yaml
---
title: Roth IRA
category: 账户类型
tags: [退休账户, 免税增值]
source: "[[raw_material/年金知识与是否需要的分析]]"
updated: 2026-04-25
status: stable
---
```

## AI Skills

| Skill | 用途 |
|-------|------|
| `/wealth-advise` | 读取 wiki + output/ 档案，生成个性化策略建议（**公开版，克隆即用**） |
| `/wealth-extract` | 从 raw_material 提炼新 wiki 条目（作者维护用） |
| `/wealth-sync` | 用 raw_material 新内容更新已有 wiki 条目（作者维护用） |
| `/wealth-log` | 记录投资交易，更新日志（作者维护用） |

## 隐私说明

- `output/` 完全不入库（含持仓金额、账户明细、个人规划）
- `templates/` 空白模板无个人数据，可安全保留在仓库

## 免责声明

本知识库内容仅供参考，不构成投资或税务建议。重大财务决策请咨询持牌财务顾问（CFP）或注册会计师（CPA）。

---

设计文档：[specs](docs/superpowers/specs/) | [plans](docs/superpowers/plans/)
