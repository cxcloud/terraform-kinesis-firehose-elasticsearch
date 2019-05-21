output "es_arn" {
  description = "Elasticsearch ARN"
  value       = "${module.es.arn}"
}

output "endpoint" {
  description = "Elasticsearch Endpoint"
  value       = "${module.es.endpoint}"
}

output "domain_id" {
  description = "Elasticsearch Domain ID"
  value       = "${module.es.domain_id}"
}

output "domain_name" {
  description = "Elasticsearch Domain Name"
  value       = "${module.es.domain_name}"
}

output "kinesis_arn" {
  description = "Kineses Firehose Stream ARN"
  value       = "${module.kinesis-firehose.arn}"
}
