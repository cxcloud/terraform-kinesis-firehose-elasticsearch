output "es_arn" {
  description = "ES ARN"
  value       = "${module.es.arn}"
}

output "endpoint" {
  description = "ES Endpoint"
  value       = "${module.es.endpoint}"
}

output "domain_id" {
  description = "ES ARN"
  value       = "${module.es.domain_id}"
}

output "domain_name" {
  description = "ES ARN"
  value       = "${module.es.domain_name}"
}

output "kinesis_arn" {
  description = "Kineses Firehose Stream ARN"
  value       = "${module.kinesis-firehose.arn}"
}
