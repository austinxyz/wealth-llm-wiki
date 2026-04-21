#!/bin/bash
# 一键部署脚本
# 在 UGREEN NAS 上 SSH 进入后执行

set -e

echo "========================================"
echo "家庭财富知识库 - 部署脚本"
echo "========================================"
echo ""

# 检查当前目录
if [ ! -f "docker-compose.yml" ]; then
    echo "❌ 错误：请在 wealth-wiki 目录运行此脚本"
    exit 1
fi

# 检查 .env
if [ ! -f ".env" ]; then
    echo "⚠️  未找到 .env 文件，从 .env.example 创建"
    cp .env.example .env
    echo ""
    echo "🔧 请编辑 .env 文件，修改以下变量："
    echo "   - BIND_IP (你的 NAS 内网 IP)"
    echo "   - RAW_MATERIAL_PATH"
    echo "   - WIKI_PATH"
    echo "   - OUTPUT_PATH"
    echo ""
    echo "编辑完成后重新运行本脚本"
    exit 0
fi

# 检查 .htpasswd
if [ ! -f ".htpasswd" ]; then
    echo "⚠️  未找到 .htpasswd 文件"
    echo "请先生成密码文件："
    echo "   bash generate-htpasswd.sh family YOUR_PASSWORD"
    exit 1
fi

# 加载 .env
set -a
source .env
set +a

# 验证路径
for path in "$RAW_MATERIAL_PATH" "$WIKI_PATH" "$OUTPUT_PATH"; do
    if [ ! -d "$path" ]; then
        echo "❌ 错误：路径不存在 - $path"
        echo "   请在 .env 中修改为实际路径"
        exit 1
    fi
done

echo "✅ 配置检查通过"
echo ""
echo "📦 构建镜像..."
docker compose build

echo ""
echo "🚀 启动服务..."
docker compose up -d

echo ""
echo "⏳ 等待服务启动（首次构建约 3-5 分钟）..."
sleep 10

# 检查容器状态
if docker compose ps | grep -q "Up"; then
    echo ""
    echo "========================================"
    echo "✅ 部署成功！"
    echo "========================================"
    echo ""
    echo "🌐 访问地址：http://${BIND_IP}:${WEB_PORT}"
    echo ""
    echo "📋 有用命令："
    echo "   查看日志：docker compose logs -f"
    echo "   重启：   docker compose restart"
    echo "   停止：   docker compose down"
    echo "   更新：   docker compose up -d --build"
    echo ""
    echo "📱 家人访问："
    echo "   1. 连家里 WiFi"
    echo "   2. 浏览器打开 http://${BIND_IP}:${WEB_PORT}"
    echo "   3. 输入账号密码"
    echo ""
else
    echo "❌ 服务启动失败"
    echo "查看日志："
    docker compose logs
    exit 1
fi
