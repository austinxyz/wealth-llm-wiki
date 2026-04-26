# 财务档案模板使用说明

这里有四个空白模板，用于配合 `/wealth-advise` skill 生成个性化财务建议。

## 使用步骤

1. 将本目录下的四个模板文件**复制**到 `output/` 目录：

```bash
cp templates/基本信息.md output/基本信息.md
cp templates/收入与税务.md output/收入与税务.md
cp templates/账户与资产.md output/账户与资产.md
cp templates/财务目标.md output/财务目标.md
```

2. 用文本编辑器打开 `output/` 中的文件，按注释提示填入你的真实信息。

3. **不必填完所有字段**，填你知道的部分即可，越完整建议越准确。

4. 在 Claude Code 中运行：`/wealth-advise 退休规划`（或其他主题）

## 隐私说明

- `output/` 目录已被 `.gitignore` 忽略，你填写的个人数据**不会**被 git 追踪
- 模板本身（`templates/`）不含任何个人数据，可安全保留在仓库中
