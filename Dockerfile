# 阶段1：构建阶段（用Node.js环境打包React项目）
FROM node:20-alpine
# 设置工作目录
WORKDIR /react-app
# 复制依赖文件
COPY package*.json ./
# 安装项目依赖
RUN npm install
# 复制项目所有源代码
COPY . .
# 执行打包命令（生成build文件夹）
RUN npm run build

CMD ["npm", "start"]