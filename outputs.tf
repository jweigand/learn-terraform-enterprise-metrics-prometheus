# The IP address of your test EC2 instance will be display in this output after the Terraform apply command completes.
output "prometheus_dashboard_url" {
  description = "Prometheus instance dashboard"
  value       = "http://${aws_elb.metrics.dns_name}:9090/graph"
}

output "grafana_dashboard_url" {
  description = "Grafana instance dashboard"
  value       = "http://${aws_elb.metrics.dns_name}:3000"
}
