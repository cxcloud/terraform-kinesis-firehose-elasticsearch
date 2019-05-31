output "arn" {
  description = "ES ARN"
  value       = aws_elasticsearch_domain.cxcloud.arn
}

output "endpoint" {
  description = "ES Endpoint"
  value       = aws_elasticsearch_domain.cxcloud.endpoint
}

output "domain_id" {
  description = "ES ARN"
  value       = aws_elasticsearch_domain.cxcloud.domain_id
}

output "domain_name" {
  description = "ES ARN"
  value       = aws_elasticsearch_domain.cxcloud.domain_name
}
