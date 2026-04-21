FROM node:22-slim

WORKDIR /app

# 安装构建依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Clone Quartz v4（稳定版）
RUN git clone --depth 1 --branch v4 https://github.com/jackyzha0/quartz.git . \
    && npm ci --no-audit --no-fund

# 复制自定义配置（覆盖 Quartz 默认）
COPY quartz.config.ts ./
COPY quartz.layout.ts ./

# 创建 content 目录并放入首页
RUN mkdir -p content
COPY content/index.md ./content/

# 暴露端口
EXPOSE 8080

# 启动（build --serve 模式会监听文件变化自动重建）
CMD ["npx", "quartz", "build", "--serve", "--port", "8080"]
