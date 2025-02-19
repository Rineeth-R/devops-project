**Project: Go Web Application Deployment with CI/CD**

**Project Description**
This project involves deploying a Go-based web application with embedded HTML components using a fully automated CI/CD pipeline. The deployment process leverages Docker, Kubernetes (EKS), Helm, ArgoCD, and GitHub Actions to ensure scalability, reliability, and seamless updates.

**Roles and Responsibilities**
Application Analysis & Local Setup:

Reviewed the project structure and ran the application locally to validate functionality.
Containerization with Docker:

**Created a multi-stage Dockerfile to optimize image size and build efficiency.**
Built and pushed the Docker image to Docker Hub (rineeth05/courses:v1).

**Kubernetes Deployment on AWS EKS:**
Set up an EKS cluster for application deployment.
Developed and deployed Kubernetes manifests:
deployment.yaml for application deployment.
service.yaml for exposing the application within the cluster.
ingress.yaml for external access configuration.
Verified that the application was accessible via NodePort.

**Ingress Configuration with NGINX:**
Installed the NGINX Ingress Controller to enable external access via a Load Balancer.
Ensured seamless routing of traffic to the application.

**DNS Configuration:**
Mapped the application to go-web-app.local for hostname-based access.

**Helm Chart Implementation:**
Installed Helm and created a Helm chart for structured deployment.
Moved Kubernetes manifests (deployment.yaml, service.yaml, ingress.yaml) into Helm templates.
Defined configurable parameters in values.yaml for easy customization.

**CI/CD Pipeline Automation:**
Configured GitHub Actions and created a CI pipeline (.github/workflows/ci.yaml).
Automated build, test, and deployment processes.
Installed ArgoCD for continuous deployment.
Created an ArgoCD application and synchronized the deployment.
Ensured successful execution of the entire CI/CD process.

![Screenshot 2025-02-19 193329](https://github.com/user-attachments/assets/7495ef21-d94c-4139-9233-381114db8bc4)

![Screenshot 2025-02-19 195959](https://github.com/user-attachments/assets/58ff8e59-d5ce-4921-95e0-e4cb555553db)




