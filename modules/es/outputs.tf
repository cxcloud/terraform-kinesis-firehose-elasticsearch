output "arn" {
  description = "Amazon Resource Name (ARN) of the domain"
  value       = var.create_es ? aws_elasticsearch_domain.cxcloud[0].arn : ""
}

output "endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = var.create_es ? aws_elasticsearch_domain.cxcloud[0].endpoint : ""
}

output "domain_id" {
  description = "Unique identifier for the domain"
  value       = var.create_es ? aws_elasticsearch_domain.cxcloud[0].domain_id : ""
}

output "domain_name" {
  description = "The name of the Elasticsearch domain"
  value       = var.create_es ? aws_elasticsearch_domain.cxcloud[0].domain_name : ""
}
