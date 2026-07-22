#!/usr/bin/env bash
set -euo pipefail
# 构建教程 zip：wiki/ + templates/（仓库既有的 4 个空白档案模板）→ dist/wealth-llm-wiki.zip
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
STAGING="$ROOT/dist/staging/wealth-llm-wiki"
ZIP="$ROOT/dist/wealth-llm-wiki.zip"

# Windows-native python needs Windows-style paths (C:\...), not Git Bash's /c/... form.
to_native_path() {
  if command -v cygpath >/dev/null 2>&1; then
    cygpath -w "$1"
  else
    printf '%s' "$1"
  fi
}

rm -rf "$ROOT/dist/staging" "$ZIP"
mkdir -p "$STAGING"

# 1. wiki 全量
cp -r "$ROOT/wiki" "$STAGING/wiki"
# 2. templates（仓库既有的 4 个空白财务档案模板，教程 Prompt 依赖这个路径）
cp -r "$ROOT/templates" "$STAGING/templates"

# 2.5 清理本地工具残留（Syncthing/macOS 等）
find "$STAGING" \( -name '.stfolder*' -o -name '.DS_Store' -o -name 'Thumbs.db' \) -exec rm -rf {} + 2>/dev/null || true

# 3. 安全断言（个人特征正则维护在未入库的 deny-list.local，避免特征本身泄漏到 public repo）
DENY_FILE="$HERE/deny-list.local"
[ -f "$DENY_FILE" ] || { echo "ABORT: 缺少 $DENY_FILE（个人特征 deny-list，本地维护不入库）"; exit 1; }
DENY="$(head -1 "$DENY_FILE")"
if grep -rEl "$DENY" "$STAGING" >/dev/null 2>&1; then
  echo "ABORT: 个人特征命中："; grep -rEl "$DENY" "$STAGING"; exit 1
fi
for BAD in .git .obsidian .superpowers raw_material; do
  if find "$STAGING" -name "$BAD" | grep -q .; then
    echo "ABORT: 禁止内容混入: $BAD"; exit 1
  fi
done

# 4. 打 zip（python 保证 Windows 可用 + UTF-8 文件名）
ROOT_NATIVE="$(to_native_path "$ROOT/dist/wealth-llm-wiki")"
ZIP_NATIVE="$(to_native_path "$ZIP")"

( cd "$ROOT/dist/staging" && python -c "
import shutil
shutil.make_archive(r'$ROOT_NATIVE', 'zip', '.', 'wealth-llm-wiki')
" )
rm -rf "$ROOT/dist/staging"
echo "OK: $ZIP"
python -c "
import zipfile
z = zipfile.ZipFile(r'$ZIP_NATIVE')
names = z.namelist()
print(f'{len(names)} entries')
assert any(n.startswith('wealth-llm-wiki/wiki/') for n in names)
assert any(n.startswith('wealth-llm-wiki/templates/') for n in names)
assert not any('raw_material' in n for n in names)
assert not any(n.startswith('wealth-llm-wiki/output/') for n in names)
print('structure check pass')
"
