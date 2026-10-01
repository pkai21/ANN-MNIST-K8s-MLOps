output "monitoring_namespace" {
  description = "Monitoring namespace"
  value       = kubernetes_namespace.monitoring.metadata[0].name
}

output "monitoring_helm_release" {
  description = "kube-prometheus-stack Helm release"
  value       = helm_release.kube_prometheus_stack.name
}