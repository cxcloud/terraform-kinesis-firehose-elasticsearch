# Common variables

variable "region" {
  type        = string
  description = "AWS Region"
  default     = "eu-west-1"
}

# Elasticsearch variables

variable "es_name" {
  type        = string
  description = "Cluster name for Elasticsearch"
  default     = "cxcloud"
}

variable "es_ver" {
  type        = string
  description = "Elasticsearch version"
  default     = 6.5
}

variable "es_instance_type" {
  type        = string
  description = "Instance type for Elasticsearch"
  default     = "t2.small.elasticsearch"
}

variable "es_instance_count" {
  type        = string
  description = "Amount of Elasticsearch nodes"
  default     = 1
}

variable "es_dedicated_master_enabled" {
  type        = string
  description = "Use dedicated master"
  default     = false
}

variable "es_ebs_size" {
  type        = string
  description = "Size of EBS volume per instance"
  default     = 35
}

variable "es_snapshot_start_hour" {
  type        = string
  description = "Start time of snapshot"
  default     = 23
}

variable "es_name_tag" {
  type        = string
  description = "name tag"
  default     = "cxcloud"
}

variable "es_whitelisted_ips" {
  type        = list(string)
  description = "Whitelisted IPs to access ES"
  default     = []
}

# Kinesis Firehose variables 
variable "stream_name" {
  type        = string
  description = "Kinesis Firehose Stream Name"
  default     = "cxcloud"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket for logs"
}

variable "s3_buffer_size" {
  type        = string
  description = "S3 Buffer Size"
  default     = 10
}

variable "s3_buffer_interval" {
  type        = string
  description = "S3 buffer interval"
  default     = 60
}

variable "s3_compression_format" {
  type        = string
  description = "S3 log compression format"
  default     = "GZIP"
}

variable "es_index_name" {
  type        = string
  description = "Elasticsearch index name"
  default     = "cxcloud"
}

variable "es_type_name" {
  type        = string
  description = "Elasticsearch index type"
  default     = "logs"
}

variable "es_buffering_size" {
  type        = string
  description = "Elasticsearch buffering size"
  default     = 10
}

variable "es_buffering_interval" {
  type        = string
  description = "Elasticsearch buffering interval"
  default     = 60
}

variable "s3_backup_mode" {
  type        = string
  description = "S3 backup mode"
  default     = "AllDocuments"
}

variable "whitelisted_aws_account_arns" {
  type        = list(string)
  description = "Whitelisted AWS ARNs to assume role for Kinesis Firehose access"
}
