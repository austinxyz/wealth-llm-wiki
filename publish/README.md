# 在美华人理财规划知识库

本仓库是一个面向在美华人的财富规划知识体系，包含：

- **wiki/**：100+ 概念的结构化知识条目（账户类型、税务策略、退休规划、中美对比等）
- **publish/**（本目录）：用虚构家庭演示如何把知识转化为实际决策
- **templates/**：空白财务档案，填写后配合 AI 工具生成个性化建议

## 三个虚构人物

| 人物 | 情况 | 系列 |
|------|------|------|
| [小陈](personas/小陈.md) | 30岁，H1B，刚入职，从零建立体系 | [新手入门](新手入门/) |
| [阿明](personas/阿明.md) | 50岁，绿卡，有积累，规划退休 | [退休规划](退休规划/) |
| [王女士](personas/王女士.md) | 55岁，绿卡，中美双边，考虑回国 | [中美双边](中美双边/) |

## 克隆后如何使用 AI 分析你的情况

### 前置条件
- 安装 [Claude Code](https://claude.ai/code)（Anthropic 官方 CLI）

### 步骤

**1. 克隆仓库**
```bash
git clone https://github.com/austinxyz/wealth.git
cd wealth
```

**2. 填写你的财务档案**
```bash
cp templates/基本信息.md output/基本信息.md
cp templates/收入与税务.md output/收入与税务.md
cp templates/账户与资产.md output/账户与资产.md
cp templates/财务目标.md output/财务目标.md
# 用任意编辑器打开 output/ 中的文件并填写
```

**3. 启动 Claude Code 并运行分析**
```bash
claude  # 打开 Claude Code
# 在 Claude Code 中输入：
/wealth-advise 退休规划
# 或参考 prompt-guide.md 中的其他 prompt
```

**4. 查看 prompt 建议**

见 [prompt-guide.md](prompt-guide.md)，按你的情况选择合适的问题。

## 隐私说明

- 你填写的 `output/` 文件已被 `.gitignore` 忽略，**不会上传到 GitHub**
- `templates/` 模板本身不含任何个人数据

## 免责声明

本知识库内容仅供参考，不构成投资或税务建议。重大财务决策请咨询持牌财务顾问（CFP）或注册会计师（CPA）。
