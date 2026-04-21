#!/bin/bash
# 构建镜像并推送到 Docker Hub
#
# 用法：
#   bash build-and-push.sh <dockerhub-username> [tag]
#
# 示例：
#   bash build-and-push.sh austinxyz
#   bash build-and-push.sh austinxyz v1.0

set -e

USERNAME="${1}"
TAG="${2:-latest}"
IMAGE_NAME="wealth-wiki"

if [ -z "$USERNAME" ]; then
    echo "❌ 用法：$0 <dockerhub-username> [tag]"
    echo "   示例：$0 austinxyz"
    exit 1
fi

FULL_NAME="${USERNAME}/${IMAGE_NAME}:${TAG}"

echo "========================================"
echo "构建镜像：$FULL_NAME"
echo "========================================"
echo ""

# 确认登录
echo "📝 确认 Docker Hub 登录..."
docker login

# 构建（多架构支持 AMD64 + ARM64，兼容 Intel/AMD/ARM NAS）
echo ""
echo "🏗️  构建镜像（多架构）..."
docker buildx create --use --name wealth-builder 2>/dev/null || docker buildx use wealth-builder

docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --tag "$FULL_NAME" \
    --tag "${USERNAME}/${IMAGE_NAME}:latest" \
    --push \
    .

echo ""
echo "========================================"
echo "✅ 推送成功"
echo "========================================"
echo ""
echo "镜像：$FULL_NAME"
echo ""
echo "📥 在 NAS 上使用："
echo "   docker pull $FULL_NAME"
echo "   docker compose -f docker-compose.nas.yml up -d"
echo ""
echo "或编辑 .env 添加："
echo "   DOCKER_HUB_USER=$USERNAME"
