#!/bin/bash
# 生成 .htpasswd 文件（Basic Auth 密码）
#
# 用法：
#   bash generate-htpasswd.sh [username] [password]
#
# 示例：
#   bash generate-htpasswd.sh family MySecurePass123

set -e

USERNAME="${1:-family}"
PASSWORD="${2}"

if [ -z "$PASSWORD" ]; then
    echo "用法：$0 <username> <password>"
    echo "示例：$0 family MySecurePass123"
    exit 1
fi

# 使用 httpd 镜像生成 bcrypt 密码
docker run --rm httpd:alpine htpasswd -nbB "$USERNAME" "$PASSWORD" > .htpasswd

echo "✅ .htpasswd 生成成功"
echo "用户名：$USERNAME"
echo "密码：$PASSWORD"
echo ""
echo "内容预览："
cat .htpasswd
