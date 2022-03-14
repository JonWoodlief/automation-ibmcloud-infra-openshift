module "gitops_repo" {
  source = "github.com/cloud-native-toolkit/terraform-tools-gitops?ref=v1.15.3"

  branch = var.gitops_repo_branch
  gitops_namespace = var.gitops_repo_gitops_namespace
  host = var.gitops_repo_host
  org = var.gitops_repo_org
  public = var.gitops_repo_public
  repo = var.gitops_repo_repo
  sealed_secrets_cert = var.gitops_repo_sealed_secrets_cert
  server_name = var.gitops_repo_server_name
  strict = var.gitops_repo_strict
  token = var.gitops_repo_token
  type = var.gitops_repo_type
  username = var.gitops_repo_username
}
module "gitops-ibm-portworx" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-ibm-portworx?ref=v0.1.0"

  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  ibmcloud_api_key = var.ibmcloud_api_key
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  namespace = module.portworx_namespace.name
  region = var.region
  resource_group_id = module.resource_group.id
  server_name = module.gitops_repo.server_name
}
module "gitops-ibmcloud-operator" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-ibmcloud-operator?ref=v0.2.1"

  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  kubeseal_cert = module.gitops_repo.sealed_secrets_cert
  server_name = module.gitops_repo.server_name
}
module "portworx_namespace" {
  source = "github.com/cloud-native-toolkit/terraform-gitops-namespace?ref=v1.11.1"

  argocd_namespace = var.portworx_namespace_argocd_namespace
  ci = var.portworx_namespace_ci
  create_operator_group = var.portworx_namespace_create_operator_group
  git_credentials = module.gitops_repo.git_credentials
  gitops_config = module.gitops_repo.gitops_config
  name = var.portworx_namespace_name
  server_name = module.gitops_repo.server_name
}
module "resource_group" {
  source = "cloud-native-toolkit/resource-group/ibm"
  version = "3.2.13"

  ibmcloud_api_key = var.ibmcloud_api_key
  resource_group_name = var.resource_group_name
  sync = var.resource_group_sync
}
