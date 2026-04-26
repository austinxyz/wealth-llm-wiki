---
name: wealth-advise
description: 结合 wiki 知识库和你填写的个人财务档案，针对指定主题生成具体的财富规划建议。用法：/wealth-advise <主题>，例如：/wealth-advise 退休规划、/wealth-advise 账户开立、/wealth-advise 税务优化
---

# wealth-advise

结合 wiki/ 通用知识和 output/ 个人财务档案，为指定主题生成针对性建议。

## 前置条件

使用前请确保已完成以下步骤：
1. 将 `templates/` 中的模板文件复制到 `output/` 并填写个人数据
2. 至少填写 `output/基本信息.md` 和 `output/账户与资产.md`

详见 `templates/README.md`。

## 使用方式

```
/wealth-advise 退休规划
/wealth-advise 账户开立
/wealth-advise 税务优化
/wealth-advise 中美双边资产
/wealth-advise 财务健康诊断
```

## 主题到文件的映射

| 主题关键词 | 相关 wiki 条目 | 相关 output 文件 |
|-----------|--------------|----------------|
| 账户开立 / 新手入门 | wiki/账户类型/* | output/基本信息.md, output/财务目标.md |
| 税务优化 / 税损收割 | wiki/税务策略/* | output/收入与税务.md, output/账户与资产.md |
| 退休规划 / FIRE | wiki/退休规划/* | output/账户与资产.md, output/财务目标.md |
| 投资配置 | wiki/投资品种/*, wiki/账户类型/* | output/账户与资产.md, output/财务目标.md |
| 中美双边 / 回国 | wiki/中美对比/* | output/基本信息.md, output/账户与资产.md |
| 保险规划 | wiki/保险规划/* | output/基本信息.md, output/收入与税务.md |
| 财务健康诊断 | wiki/家庭财务/*, wiki/退休规划/* | output/基本信息.md, output/收入与税务.md, output/账户与资产.md, output/财务目标.md |

## 执行步骤

1. **解析主题**：根据用户输入，对照上表确定需要读取的文件列表

2. **读取知识层**：使用 Read 工具读取相关 wiki 条目，提取适用的原则、规则、要点

3. **读取个人档案**：使用 Read 工具读取 output/ 中对应的模板文件。如果文件不存在，提示用户先按 `templates/README.md` 的说明填写

4. **生成分析**：综合知识层和个人数据，生成以下结构的建议：

```markdown
## 你的情况概述
基于你的档案，当前 <主题> 方面的状况是：...

## 发现的优化机会
1. <具体问题>：<基于 wiki 知识的解释>
2. ...

## 具体行动建议
| 优先级 | 操作 | 预期价值 | 注意事项 |
|-------|------|---------|---------|
| 🔴 高 | ... | ... | ... |

## 风险提示
- ...
```

5. **询问是否保存**：询问用户是否将建议保存到 output/ 目录
   - 是 → 写入 `output/<主题>策略建议-<日期>.md`
   - 否 → 仅展示，不写入文件

## 注意事项

- output/ 目录含个人敏感数据，已被 .gitignore 忽略，不会上传到 GitHub
- 本工具输出为参考建议，不构成投资建议，请结合自身判断并咨询专业顾问
- 如需更新建议，修改 output/ 中的档案文件后重新运行 /wealth-advise
