# Devops-Course-Assignments

# ASSIGNMENT 1 - Linux Commands Assignment

## Topics Covered
- File & Directory Management
- Viewing Files
- Pattern Searching
- Compression
- File Permissions
- Environment Variables

# ASSIGNMENT 02 – Python Basics

## Topics Covered
- If-else statements
- Dictionary operations
- File handling (read & write)

## Programs Included
1. Grade Checker
2. Student Grades using Dictionary
3. Write to a File
4. Read from a File

# Assignment 03 – Flask and MongoDB

## Features
- Flask API returning JSON data
- Backend file integration
- MongoDB Atlas data insertion
- Success and error handling

## Technologies Used
- Python
- Flask
- MongoDB Atlas
- HTML

📘 Assignment 4 – Git & GitHub Basics
📌 Description
This assignment demonstrates the usage of Git and GitHub for version control.
It covers repository creation, file tracking, committing changes, and pushing code to GitHub.

🛠 Technologies Used
Git
GitHub
Git Bash / Command Line

🚀 Git Commands Used
git init
git status
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin <repository-url>
git push -u origin main

✅ Outcome

Git repository initialized successfully
Files tracked and committed
Code pushed to GitHub repository

📌 Conclusion

This assignment helped in understanding basic Git operations and GitHub workflow used in real-world software development.

📘 Assignment 5 – Docker Basics
📌 Description
This assignment focuses on Docker fundamentals, including creating a Docker image, running containers, and managing Docker commands.

🛠 Technologies Used
Docker
Docker Desktop
PowerShell / Command Prompt
✅ Outcome

Docker image built successfully
Container created and running
Application accessible via mapped port

📌 Conclusion
This assignment provided practical knowledge of containerization using Docker and how applications can be packaged and deployed efficiently.
AWS Deployment Assignment (Docker-Based Alternative)
📌 Project Overview

This project demonstrates the deployment of a Flask backend and an Express.js frontend using containerization.
The goal of the assignment is to understand AWS deployment concepts such as EC2, ECR, ECS, and VPC.

Since creating an AWS account requires debit/credit card verification and was not possible, AWS services were simulated using Docker-based alternatives, which closely mirror real AWS behavior.

🏗️ Architecture Overview

Backend: Flask (Python)

Frontend: Express.js (Node.js)

Containerization: Docker

Orchestration: Docker Compose

Container Registry: Docker Hub

🔄 ASSIGNMNET-06 AWS Services Mapping (Alternative Implementation)
AWS Service	Purpose	Alternative Used
EC2 (Single Instance)	Host frontend & backend together	Docker Compose on local machine
EC2 (Separate Instances)	Host frontend & backend separately	Independent Docker containers
ECR	Container image registry	Docker Hub
ECS	Container orchestration	Docker Compose
VPC	Network isolation	Docker bridge network

🚀 Deployment Scenarios Implemented

1️⃣ Flask Backend & Express Frontend on a Single EC2 Instance
Implemented using Docker Compose
Both services run on the same machine and network
Simulates a single EC2 instance

Command used:

docker compose up --build

2️⃣ Flask Backend & Express Frontend on Separate EC2 Instances

Containers run independently
Simulates separate EC2 instances

Commands used:
docker run -d -p 5000:5000 aws-depolyment-assignment-backend
docker run -d -p 3000:3000 aws-depolyment-assignment-frontend

Verification:
docker ps

3️⃣ Dockerized Deployment Using ECR, ECS, and VPC (Simulated)

Images pushed to Docker Hub (ECR equivalent)
Services managed via Docker Compose (ECS equivalent)
Docker networking used as VPC equivalent

🌐 Application Access

Frontend: http://localhost:3000
Backend: http://localhost:5000

📂 Project Structure
aws-depolyment-assignment/
│
├── backend-flask/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
│
├── frontend-express/
│   ├── index.js
│   ├── Dockerfile
│   └── package.json
│
├── docker-compose.yml
├── README.md
└── screenshots/

📸 Screenshots

Screenshots of the following are included:
Docker containers running
Frontend output
Backend output
Docker Hub repositories

⚠️ Note on AWS Account

AWS account creation requires debit/credit card verification even for the Free Tier.
Due to the unavailability of a card, direct AWS deployment could not be performed.
However, the application is fully containerized and production-ready, and can be deployed on AWS EC2, ECS, and ECR without any code changes.

✅ Conclusion

This project successfully demonstrates:
Backend and frontend containerization
Multi-container deployment
Cloud architecture understanding
AWS deployment concepts through Docker-based simulation

📌 Assignment-07: Description

In this assignment, the Flask frontend and Express backend from the previous assignment were deployed into a local Kubernetes cluster using Minikube.
Both applications were first containerized using Docker and then deployed as Kubernetes Deployments.
Each deployment manages application pods, ensuring reliability and scalability.
The applications were exposed externally using Kubernetes Services (NodePort), allowing access through the Minikube cluster.

This setup helps in understanding:

Kubernetes Pods, Deployments, and Services

Container orchestration using Kubernetes

Local cluster simulation using Minikube

Communication between frontend and backend inside a Kubernetes environment

The deployment was verified using kubectl commands and browser access via Minikube service URLs.

🔄 Flow Chart (Kubernetes Deployment Flow)
Start
  │
  ▼
Previous Assignment Applications
(Flask Frontend + Express Backend)
  │
  ▼
Dockerize Applications
(Create Docker Images)
  │
  ▼
Start Minikube Cluster
  │
  ▼
Load Docker Images into Minikube
  │
  ▼
Create Kubernetes Deployments
(Flask Deployment & Express Deployment)
  │
  ▼
Pods Created Inside Cluster
  │
  ▼
Create Kubernetes Services
(NodePort Services)
  │
  ▼
Expose Applications via Minikube
  │
  ▼
Access Applications in Browser
  │
  ▼
End
