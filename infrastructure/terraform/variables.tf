variable "kubeconfig_path" {
  description = "Path to the Kubernetes kubeconfig"
  type        = string
  default     = "~/.kube/config"
}

variable "kube_context" {
  description = "Kubernetes context used by Terraform"
  type        = string
  default     = "kind-learning-k8s"
}

variable "monitoring_namespace" {
  description = "Namespace for monitoring components"
  type        = string
  default     = "monitoring"
}