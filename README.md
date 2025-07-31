## Essa documentação contém uma versão em português e em inglês
## This documentation has a version in Portuguese and English

# 🚀 Projeto DevOps: Site Estático com CI/CD

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.kernel.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://docs.github.com/actions)
[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)
[![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)](https://www.nginx.com/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)


---

## 🌐 Descrição Detalhada

Este projeto demonstra um fluxo completo de DevOps com CI/CD automatizado para uma aplicação web estática. Ele simula um pipeline moderno com todas as etapas fundamentais:

- Versionamento com **Git** e hospedagem no **GitHub**.
- **Containerização** da aplicação com **Docker**.
- Publicação da imagem no **Docker Hub**.
- Pipeline de **CI/CD** com **GitHub Actions**.
- **Orquestração** com **Kubernetes (Minikube)** para simular ambiente de produção.
- **Provisionamento de infraestrutura** com **Terraform**, incluindo EC2, Bucket S3 e IAM user (simulado/local com AWS provider).

Esse projeto serve como base para demonstrar habilidades em automação, deploy, infraestrutura como código e boas práticas DevOps.

---

## 📁 Estrutura do Projeto

```
📦 devops-demo-site/
 ┣ 📂 .github/
 ┃ ┗ 📂 workflows/
 ┃ ┃ ┗ 📄 deploy.yml
 ┣ 📂 IaC/
 ┃ ┃ ┗ 📄 main.tf
 ┃ ┃ ┗ 📄 outputs.tf
 ┃ ┃ ┗ 📄 terraform.tfstate
 ┃ ┃ ┗ 📄 variables.tf
 ┣ 📂 K8s/
 ┃ ┃ ┗ 📄 deployment.yml
 ┃ ┃ ┗ 📄 service.yml
 ┣ 📄 Dockerfile
 ┣ 📄 index.html
 ┣ 📄 style.css  
 ┗ 📄 README.md
```
---

## 🧪 Requisitos e Instalação

### 🔧 Tecnologias obrigatórias instaladas:

| Ferramenta | Instalação |
|-----------|------------|
| **Docker** | [Instale aqui](https://docs.docker.com/get-docker/) |
| **Minikube** | [Instale aqui](https://minikube.sigs.k8s.io/docs/start/) |
| **kubectl** | [Instale aqui](https://kubernetes.io/docs/tasks/tools/) |
| **Terraform** | [Instale aqui](https://developer.hashicorp.com/terraform/downloads) |
| **Git** | [Instale aqui](https://git-scm.com/downloads) |

### ✅ Comandos básicos para verificação:

```bash
docker --version
minikube version
kubectl version --client
terraform -v
git --version
```

---
## 🛠️ Executando o Projeto Localmente

1. **Clone o repositório**
   ```bash
   git clone https://github.com/mateusamauri/devops-demo-site.git
   cd devops-demo-site
   ```

2. **Crie e execute os comandos manualmente ou utilize o pipeline CI/CD com github actions que executa essas ações automaticamente ao ao realizar `push` na branch `main`**

---

### 🔄 Iniciando Minikube
```bash
minikube start
```

### 🐳 Build da imagem Docker
```bash
docker build -t mateusamauri/devops-site .
```
### ▶️ Rodar o container localmente (teste rápido)
```bash
docker run -d -p 8080:80 mateusamauri/devops-site
```
Acesse: [http://localhost:8080](http://localhost:8080)

### 🚀 Push da imagem para o Docker Hub
```bash
docker push mateusamauri/devops-site
```

### ☸️ Aplicando os manifests do Kubernetes
```bash
kubectl apply -f K8s/deployment.yml
kubectl apply -f K8s/service.yml
```

### 🌐 Acessando o serviço via Minikube
```bash
minikube service devops-site-service
```

### 🌍 Provisionando infraestrutura com Terraform
```bash
cd IaC/
terraform init
terraform plan
terraform apply
```

---

## 🔁 CI/CD com GitHub Actions

O pipeline é executado automaticamente ao realizar `push` na branch `main`.

### Etapas do pipeline:

- 🔐 Login no Docker Hub (usando secrets do GitHub)
- 🛠️ Build da imagem Docker
- 🚀 Push da imagem para o Docker Hub
- ☸️ Aplicação dos manifests no cluster Kubernetes

### Secrets necessários no GitHub:

- `DOCKER_USERNAME`
- `DOCKER_PASSWORD`

---

## 📦 Tecnologias Utilizadas

- **Git / GitHub**
- **Docker & Docker Hub**
- **GitHub Actions**
- **Kubernetes (Minikube)**
- **Terraform**
- **AWS (simulado via Terraform)**
- **Nginx (web server estático)**
- **HTML**
- **CSS**

---

## 👤 Autor

Desenvolvido por [Mateus Amauri](https://github.com/mateusamauri)


## English Version

# 🚀 DevOps Project: Static Website with CI/CD

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.kernel.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)](https://docs.github.com/actions)
[![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)](https://git-scm.com/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)
[![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)](https://www.nginx.com/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)

---

## 🌐 Detailed Description

This project demonstrates a complete DevOps pipeline with automated CI/CD for a static website. It simulates a modern workflow including all the key stages:

- Version control using **Git** and hosting on **GitHub**
- **Containerization** with **Docker**
- Publishing the Docker image to **Docker Hub**
- CI/CD pipeline using **GitHub Actions**
- **Orchestration** with **Kubernetes (Minikube)** to simulate a production environment
- **Infrastructure provisioning** with **Terraform**, including EC2, S3 bucket, and IAM user (simulated/local via AWS provider)

This project is a hands-on demonstration of automation, deployment, infrastructure as code, and DevOps best practices.

---

## 📁 Project Structure

```
📦 devops-demo-site/
 ┣ 📂 .github/
 ┃ ┗ 📂 workflows/
 ┃ ┃ ┗ 📄 deploy.yml
 ┣ 📂 IaC/
 ┃ ┃ ┗ 📄 main.tf
 ┃ ┃ ┗ 📄 outputs.tf
 ┃ ┃ ┗ 📄 terraform.tfstate
 ┃ ┃ ┗ 📄 variables.tf
 ┣ 📂 K8s/
 ┃ ┃ ┗ 📄 deployment.yml
 ┃ ┃ ┗ 📄 service.yml
 ┣ 📄 Dockerfile
 ┣ 📄 index.html
 ┣ 📄 style.css  
 ┗ 📄 README.md
```

---

## 🧪 Requirements and Installation

### 🔧 Required tools installed:

| Tool | Installation |
|------|--------------|
| **Docker** | [Install here](https://docs.docker.com/get-docker/) |
| **Minikube** | [Install here](https://minikube.sigs.k8s.io/docs/start/) |
| **kubectl** | [Install here](https://kubernetes.io/docs/tasks/tools/) |
| **Terraform** | [Install here](https://developer.hashicorp.com/terraform/downloads) |
| **Git** | [Install here](https://git-scm.com/downloads) |

### ✅ Basic commands for verification:

```bash
docker --version
minikube version
kubectl version --client
terraform -v
git --version
```

---

## 🛠️ Running the Project Locally

1. **Clone the repository**
   ```bash
   git clone https://github.com/mateusamauri/devops-demo-site.git
   cd devops-demo-site
   ```

2. **Manually execute the commands or use the CI/CD pipeline which runs automatically upon `push` to the `main` branch**

---

### 🔄 Start Minikube
```bash
minikube start
```

### 🐳 Build the Docker image
```bash
docker build -t mateusamauri/devops-site .
```

### ▶️ Run the container locally (quick test)
```bash
docker run -d -p 8080:80 mateusamauri/devops-site
```
Access: [http://localhost:8080](http://localhost:8080)

### 🚀 Push the image to Docker Hub
```bash
docker push mateusamauri/devops-site
```

### ☸️ Apply Kubernetes manifests
```bash
kubectl apply -f K8s/deployment.yml
kubectl apply -f K8s/service.yml
```

### 🌐 Access the service via Minikube
```bash
minikube service devops-site-service
```

### 🌍 Provision infrastructure using Terraform
```bash
cd IaC/
terraform init
terraform plan
terraform apply
```

---

## 🔁 CI/CD with GitHub Actions

The pipeline runs automatically upon `push` to the `main` branch.

### Pipeline steps:

- 🔐 Login to Docker Hub (via GitHub Secrets)
- 🛠️ Build Docker image
- 🚀 Push Docker image to Docker Hub
- ☸️ Apply Kubernetes manifests

### Required GitHub Secrets:

- `DOCKER_USERNAME`
- `DOCKER_PASSWORD`

---

## 📦 Technologies Used

- **Git / GitHub**
- **Docker & Docker Hub**
- **GitHub Actions**
- **Kubernetes (Minikube)**
- **Terraform**
- **AWS (simulated via Terraform)**
- **Nginx (static web server)**
- **HTML**
- **CSS**

---

## 👤 Author

Developed by [Mateus Amauri](https://github.com/mateusamauri)