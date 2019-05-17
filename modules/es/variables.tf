variable "name" {
  type        = "string"
  description = "Domain name for Elasticsearch"
  default     = "cxcloud"
}

variable "region" {
  type        = "string"
  description = "AWS Region"
}

variable "account_id" {
  type        = "string"
  description = "AWS Account ID"
}

variable "es_ver" {
  type        = "string"
  description = "Elasticsearch Version"
  default     = 6.5
}

variable "instance_type" {
  type        = "string"
  description = "Instance type for ES"
}

variable "instance_count" {
  type        = "string"
  description = "Amount of ES nodes"
  default     = 1
}

variable "dedicated_master_enabled" {
  type        = "string"
  description = "Use dedicated master"
  default     = false
}

variable "ebs_size" {
  type        = "string"
  description = "Size of EBS volume per instance"
}

variable "snapshot_start_hour" {
  type        = "string"
  description = "Start time of snapshot"
  default     = 23
}

variable "name_tag" {
  type        = "string"
  description = "name tag"
  default     = "cxcloud"
}

variable "stream_name" {
  type        = "string"
  description = "Kinesis delivery stream name"
  default     = "cxcloud"
}

variable "whitelisted_ips" {
  type        = "list"
  description = "Whitelisted IPs to access ES"
}
