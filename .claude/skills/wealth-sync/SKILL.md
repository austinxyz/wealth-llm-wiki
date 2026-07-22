---
name: wealth-sync
description: 用 raw_material 中的新内容更新已有 wiki 条目。当原始资料有更新或补充时，提取增量知识点合并到对应 wiki 条目，不覆盖已有内容。用法：/wealth-sync <wiki条目路径>
---

# wealth-sync

将 `raw_material/` 中的新增内容同步更新到已有 `wiki/` 条目。

## 使用方式

```
/wealth-sync wiki/账户类型/Roth-IRA.md
```

## 执行步骤

1. **读取 wiki 条目**：使用 Read 工具读取指定的 wiki 文件，解析 frontmatter 中的 `source` 字段，获取来源 raw_material 文件路径

2. **读取来源文件**：读取 `source` 指向的 raw_material 文件全文

3. **对比分析**：将 raw_material 中关于该条目主题的内容与 wiki 条目现有内容对比：
   - 找出 raw_material 中有但 wiki 条目中未提及的知识点
   - 找出 raw_material 中有数据更新的内容（如利率变化、法规修订）

4. **展示差异**：向用户展示拟新增/更新的内容摘要，格式：
   ```
   📝 拟新增到"核心要点"：
   - 新要点1
   - 新要点2

   🔄 拟更新的内容：
   - 原：xxx → 新：yyy
   ```

5. **等待确认**：询问用户是否继续（默认继续）

6. **执行更新**：
   - 将新要点追加到"核心要点"末尾，不删除已有内容
   - 更新有变化的数据
   - 更新 frontmatter：`updated` 改为今日日期，`status` 改为 `stable`

7. **汇报完成**：告知用户更新了哪些内容，frontmatter 变更情况

## 注意事项

- **只追加，不删除**：已有内容不会被覆盖，只会追加新信息
- 如果 raw_material 中无新内容，告知用户"条目已是最新，无需更新"
- 更新后 status 自动变为 `stable`
