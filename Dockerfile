#ใช้ Node base image
FROM node:18-alpine

#ตั้ง working directory
WORKDIR /app

#คัดลอกไฟล์
COPY package*.json ./
RUN npm install --only=production

COPY . .

#เปิด port
EXPOSE 3000

#คำสั่งรันแอป
CMD ["npm", "start"]