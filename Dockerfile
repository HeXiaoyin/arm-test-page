# 使用 ARM 兼容的基础镜像（这里以 nginx:alpine 为例，支持多架构）
FROM nginx:stable-alpine

# 删除默认欢迎页
RUN rm -rf /usr/share/nginx/html/*

# 复制自定义页面到 Nginx 默认目录
COPY index.html /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 8888

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]