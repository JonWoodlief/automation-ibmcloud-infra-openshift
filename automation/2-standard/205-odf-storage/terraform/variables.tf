variable "cluster_name" {
  type = string
  description = "The name of the ROKS cluster where ODF will be installed"
}
variable "region" {
  type = string
  description = "The region where the cluster is deployed"
}
variable "ibmcloud_api_key" {
  type = string
  description = "The api key for IBM Cloud access"
}
variable "gitops-ibm-odf_job_container_image" {
  type = string
  description = "The the container image that the job will be executed within"
  default = "quay.io/ibmgaragecloud/cli-tools"
}
variable "gitops-ibm-odf_job_container_image_tag" {
  type = string
  description = "The the container image tag"
  default = "v0.15"
}
variable "odf_namespace_name" {
  type = string
  description = "The value that should be used for the namespace"
}
variable "odf_namespace_ci" {
  type = bool
  description = "Flag indicating that this namespace will be used for development (e.g. configmaps and secrets)"
  default = false
}
variable "odf_namespace_create_operator_group" {
  type = bool
  description = "Flag indicating that an operator group should be created in the namespace"
  default = true
}
variable "odf_namespace_argocd_namespace" {
  type = string
  description = "The namespace where argocd has been deployed"
  default = "openshift-gitops"
}
variable "gitops_repo_host" {
  type = string
  description = "The host for the git repository."
}
variable "gitops_repo_type" {
  type = string
  description = "The type of the hosted git repository (github or gitlab)."
}
variable "gitops_repo_org" {
  type = string
  description = "The org/group where the git repository exists/will be provisioned."
}
variable "gitops_repo_repo" {
  type = string
  description = "The short name of the repository (i.e. the part after the org/group name)"
}
variable "gitops_repo_branch" {
  type = string
  description = "The name of the branch that will be used. If the repo already exists (provision=false) then it is assumed this branch already exists as well"
  default = "main"
}
variable "gitops_repo_provision" {
  type = bool
  description = "Flag indicating that the git repo should be provisioned. If `false` then the repo is expected to already exist"
  default = true
}
variable "gitops_repo_initialize" {
  type = bool
  description = "Flag indicating that the git repo should be initialized. If `false` then the repo is expected to already have been initialized"
  default = false
}
variable "gitops_repo_username" {
  type = string
  description = "The username of the user with access to the repository"
}
variable "gitops_repo_token" {
  type = string
  description = "The personal access token used to access the repository"
}
variable "gitops_repo_public" {
  type = bool
  description = "Flag indicating that the repo should be public or private"
  default = false
}
variable "gitops_repo_gitops_namespace" {
  type = string
  description = "The namespace where ArgoCD is running in the cluster"
  default = "openshift-gitops"
}
variable "gitops_repo_server_name" {
  type = string
  description = "The name of the cluster that will be configured via gitops. This is used to separate the config by cluster"
  default = "default"
}
variable "gitops_repo_sealed_secrets_cert" {
  type = string
  description = "The certificate/public key used to encrypt the sealed secrets"
  default = ""
}
variable "gitops_repo_strict" {
  type = bool
  description = "Flag indicating that an error should be thrown if the repo already exists"
  default = false
}
