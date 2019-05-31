output "arn" {
  description = "Kineses Firehose Stream ARN"
  value       = aws_kinesis_firehose_delivery_stream.cxcloud.arn
}
