
# 🌍 Production-Ready Multi-Cloud Terraform (EKS + AKS + GKE)

## 🚀 Steps

### 1. Init
terraform init

### 2. Update variables.tf
Add your credentials.

### 3. Deploy All
terraform apply -auto-approve

### 4. Deploy Individual
terraform apply -var="deploy_eks=true" -var="deploy_aks=false" -var="deploy_gke=false"

---

## 🔗 Connect Clusters

### EKS
aws eks update-kubeconfig --region <region> --name demo-eks

### AKS
az aks get-credentials --resource-group aks-rg --name demo-aks

### GKE
gcloud container clusters get-credentials demo-gke --region us-central1

---

## ⚡ Includes
- VPC, subnets (AWS)
- Resource Group (Azure)
- VPC network (GCP)
- Managed Kubernetes clusters (2 nodes each)
