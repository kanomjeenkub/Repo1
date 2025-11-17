# 📌 Project Name: Hello DevOps API
## 1. วิธีรันบนเครื่อง
npm install
npm start

เปิดที่:
http://localhost:3000/hello

## 2. CI/CD Pipeline Flow
flowchart TD
  A[Developer Push Code] --> B[GitHub Repo]
  B --> C[GitHub Actions Trigger]
  C --> D[Render Deploy Hook]
  D --> E[Render Build & Deploy]
  E --> F[Service Online]

## 3. Pipeline Explanation
ทุกครั้งที่ push ไปที่ main

GitHub Actions ทำงาน (checkout code → เรียก Render API)

Render ทำการ deploy code ใหม่

Service Online อัตโนมัติ

## 4. Screenshot
ให้แนบ:

GitHub Actions "Success"

Render “Deploy Successful”

หน้าเว็บ/Endpoint เช่น
https://xxxxxx.onrender.com/hello

## 5. Repository Structure
.github/workflows/deploy.yml   # GitHub Actions
index.js                       # API endpoint
package.json                   # Node project file
README.md                      # Documentation
