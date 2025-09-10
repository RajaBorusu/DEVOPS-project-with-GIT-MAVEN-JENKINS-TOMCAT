# 🚀 DevOps End-to-End Project with Git, Maven & Tomcat

## 📌 Project Overview  
This project demonstrates a **CI/CD pipeline** using **GitHub → Jenkins → Maven → Tomcat**.  
It automates fetching source code, building with Maven, and deploying to Tomcat.

---

## 🏗️ Infrastructure Setup  
- **Instance 1 (Jenkins Server)**  
  - Installed: `Git`, `Maven`, `Jenkins`  
- **Instance 2 (Tomcat Server)**  
  - Installed: `Apache Tomcat`

---

## ⚙️ Jenkins Configuration  
1. **Created Job** → Freestyle Project  
2. **Source Code Management** → GitHub Repository URL  
3. **Build Step** → `mvn clean package`  
4. **Webhook Integration** → GitHub Webhook → Jenkins  
5. **Post-Build Action** → Deploy WAR/EAR to Tomcat container (via *Deploy to Container Plugin*)  

---

## 🐱 GitHub Webhook Setup  
- Configured webhook in GitHub repository.  
- Enabled → **"Build when a change is pushed to GitHub"** in Jenkins.  

---

## 🖥️ Tomcat Server Configuration  
- Downloaded & extracted Tomcat from official website.  
- Modified file:  
  - `webapps/manager/META-INF/context.xml` → removed `<Valve>` entry to allow remote access.  
- Configured roles & users in:  
  - `conf/tomcat-users.xml`  

```xml
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<user username="admin" password="admin123" roles="manager-gui,manager-script"/>
