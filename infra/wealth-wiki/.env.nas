# ========================================
# NAS 部署配置（UGREEN NAS）
# ========================================
# 上传到 NAS 后，重命名为 .env
#   cp .env.nas .env

# --- 网络配置 ---

# NAS IP（改成你的实际 NAS 内网 IP）
BIND_IP=10.0.0.20

# Web 访问端口
WEB_PORT=8080

# --- 内容目录路径（NAS 实际路径）---
# 你的 NAS 已建：/volume1/docker/wealth/content/
#   ├── raw_material/
#   ├── wiki/
#   └── output/

RAW_MATERIAL_PATH=/volume1/docker/wealth/content/raw_material
WIKI_PATH=/volume1/docker/wealth/content/wiki
OUTPUT_PATH=/volume1/docker/wealth/content/output

# --- 时区 ---
TZ=Asia/Shanghai
