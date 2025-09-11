# 🚀 DevOps End-to-End Project with Git, Maven, Jenkins & Tomcat

## 📌 Project Overview  
This project demonstrates a **CI/CD pipeline (Freestyle Job)** using **GitHub → Jenkins → Maven → Tomcat**.  

It automates:  
- Fetching code from GitHub  
- Building artifacts using Maven  
- Deploying to Tomcat server


---

## 🏗️ Infrastructure Setup  
- **Instance 1 (Jenkins Server)**  
  - Installed: `Git`, `Maven`, `Jenkins`  
- **Instance 2 (Tomcat Server)**  
  - Installed: `Apache Tomcat`

---

## ⚙️ Jenkins Configuration (Freestyle Job)  
1. Created a **Freestyle Project** in Jenkins (not a pipeline job).  
2. Configured GitHub repo under *Source Code Management*.  
3. Added Maven build step → `mvn clean package`.  
4. Configured GitHub Webhook to trigger builds automatically.  
5. Installed and used **Deploy to Container Plugin** for deployment.  


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
```


<h1>Later extended this into **Pipeline-as-Code** using a `Jenkinsfile`</h1>
