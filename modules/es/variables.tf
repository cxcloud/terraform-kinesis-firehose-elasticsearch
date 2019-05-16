variable "name" {
  description = "Domain name for Elasticsearch"
  default     = "cxcloud"
}

variable "region" {
  description = "AWS Region"
}

variable "account_id" {
  description = "AWS Account ID"
}

variable "es_ver" {
  description = "Elasticsearch Version"
  default     = 6.5
}

variable "instance_type" {
  description = "Instance type for ES"
}

variable "instance_count" {
  description = "Amount of ES nodes"
  default     = 1
}

variable "dedicated_master_enabled" {
  description = "Use dedicated master"
  default     = false
}

variable "ebs_size" {
  description = "Size of EBS volume per instance"
}

variable "snapshot_start_hour" {
  description = "Start time of snapshot"
  default     = 23
}

variable "name_tag" {
  description = "name tag"
  default     = "cxcloud"
}

variable "stream_name" {
  description = "Kinesis delivery stream name"
  default     = "cxcloud"
}

variable "whitelisted_ips" {
  description = "Whitelisted IPs to access ES"
  type        = "list"
}
