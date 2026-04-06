
variable "deploy_eks" { default = true }
variable "deploy_aks" { default = true }
variable "deploy_gke" { default = true }

# AWS
variable "aws_region" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}

# Azure
variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

# GCP
variable "gcp_project" {}
variable "gcp_region" {}
variable "gcp_credentials_file" {}
