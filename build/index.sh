
###
 # @Description: 
 # @Version: 1.0
 # @Author: wenbin
 # @Date: 2025-09-19 11:48:27
 # @LastEditors: wenbin
 # @LastEditTime: 2025-09-19 11:58:06
 # @FilePath: /quickref/build/index.sh
 # Copyright (C) 2025 wenbin. All rights reserved.
###
pnpm run build
echo "打包完成..."

docker build -t quickref:latest .
echo "镜像构建完成..."

docker stop quickref
echo "容器停止完成..."

docker rm quickref
echo "容器删除完成..."

docker run -d -p 11001:11001 --name quickref quickref:latest
echo "容器启动完成..."