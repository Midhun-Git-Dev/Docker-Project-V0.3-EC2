# 🚀 Docker-Project-V2  
**Enterprise CI/CD Pipeline for Java WAR Deployment on Tomcat**  
using Docker • Jenkins • Maven • SonarQube

## 🧩 Problem Statement

Modern software teams require **automated, reliable, and secure** deployment pipelines to:

- Eliminate manual errors  
- Accelerate release cycles  
- Ensure consistent production environments  

Traditional deployments of Java web applications are often slow, error-prone, and hard to scale.  

This project implements a **fully automated CI/CD pipeline** that builds, tests, analyzes, containerizes, and deploys a **Java WAR** application into **Apache Tomcat** running inside **Docker**.

## 🎯 Project Objectives

- Automate build, test, static code analysis, containerization & deployment  
- Deploy Java WAR files into Tomcat containers  
- Enforce code quality using **SonarQube Quality Gates**  
- Build an end-to-end **Jenkins CI/CD pipeline**  
- Deliver repeatable, scalable, production-grade deployments  

## 🛠 Tech Stack

| Category              | Technology/Tools                  |
|-----------------------|-----------------------------------|
| Version Control       | Git, GitHub                       |
| CI/CD                 | Jenkins                           |
| Build Tool            | Maven                             |
| Containerization      | Docker                            |
| Application Server    | Apache Tomcat                     |
| Code Quality          | SonarQube                         |
| Programming Language  | Java (JSP / WAR packaging)        |
| Notifications         | Slack                             |
| Networking / Testing  | ngrok                             |

## 🏗 System Architecture
Developer → GitHub Push → Jenkins (Webhook) → Pipeline Triggers
↓
Maven → Build WAR
↓
SonarQube → Code Scan + Quality Gate
↓ (pass)
Docker → Build Tomcat + WAR Image
↓
Docker → Run Container (port mapping)
↓
Browser / Client → http://localhost:8085/app
text**Pipeline Stages (Jenkinsfile)**

1. Checkout Source Code  
2. Maven Build (WAR packaging)  
3. SonarQube Analysis  
4. Quality Gate Check  
5. Docker Image Build  
6. Deploy & Run Container  
7. Send Slack Notification (Success / Failure)

## 🚢 Deployment Strategy

- **Containerized deployment** using Docker  
- WAR file baked into custom Tomcat image  
- Port mapping for external access  
- Clean container replacement (stop → remove → run new)  
- Zero-downtime philosophy (future blue-green/canary ready)

**Key Benefits**

- Consistent environments across dev/test/prod  
- Easy rollback (previous image tag)  
- Portable across machines and clouds  
- Production-like container model

## 🔐 Security & Best Practices

- SonarQube token-based authentication  
- Jenkins credentials plugin (no hard-coded secrets)  
- Docker image runs with non-root user (where possible)  
- Environment variables for configuration  
- Git commit history & traceability  
- Least-privilege principle  
- Automated container cleanup

## ⚔ Challenges & Solutions

| Challenge                            | Solution                                      |
|--------------------------------------|-----------------------------------------------|
| SonarQube authentication failures    | Used secure token + Jenkins credentials       |
| Incorrect WAR path in container      | Fixed Dockerfile COPY instruction & context   |
| Port conflicts                       | Custom external port mapping                  |
| Stale containers blocking ports      | Automated stop/rm in pipeline                 |
| Multi-module / nested project folder | Correct pipeline directory targeting          |

## 📊 Results & Business Value

**Achievements**

- ✅ 100% automated build → deploy pipeline  
- ✅ Zero manual server login / WAR copy steps  
- ✅ Code quality enforced before deployment  
- ✅ Consistent & repeatable deployments  
- ✅ Enterprise-grade DevOps workflow

**Business Impact**

- Significantly faster time-to-market  
- Higher code quality & fewer production bugs  
- Reduced operational risk & human error  
- Scalable foundation for cloud-native evolution  

## 🔮 Future Enhancements

- Kubernetes deployment (EKS / AKS / GKE)  
- Cloud hosting (AWS / Azure / GCP)  
- Blue-Green & Canary release strategies  
- Infrastructure as Code (Terraform / OpenTofu)  
- Observability (Prometheus + Grafana + Loki)  
- Automated rollback on failed health checks  
- Load balancer & horizontal autoscaling  

