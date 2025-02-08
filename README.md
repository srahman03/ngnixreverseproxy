# Deploying & Scaling a Flask App with Docker, Nginx, and GitHub  

## Problem Statement  

You are tasked with **deploying a scalable and containerized Flask web application** for a startup.  
This application serves **static and dynamic content** but does not require a database.  
The deployment must be **automated using Docker and Nginx**, with the source code hosted on **GitHub**.  

---

## ⚡ Challenges  

❌ **Manual Deployment**: Developers currently deploy Flask apps manually, leading to inconsistencies.  
❌ **Traffic Handling Issues**: The app struggles to handle traffic spikes without a load balancer.  
❌ **Error-Prone Updates**: Deploying code updates manually is time-consuming and unreliable.  
❌ **Lack of Container Orchestration**: There’s no clean way to manage multiple containers for scalability.  

---

## Solution Overview  

✅ **Docker for Standardization**:  
- Containerize the Flask application using a **Dockerfile**.  

✅ **Nginx as Reverse Proxy**:  
- Use **Nginx** to efficiently route traffic to the Flask containers.  

✅ **GitHub Integration for Updates**:  
- Automate updates by **pulling the latest code from GitHub** and redeploying containers (via a **shell script**).  

---
Project By: Sadika
