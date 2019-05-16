# AWS Elasticsearch
data "aws_caller_identity" "current" {}

module "es" {
  source              = "./modules/es"
  name                = "cxcloud"
  region              = "eu-west-1"
  account_id          = "${data.aws_caller_identity.current.account_id}"
  es_ver              = 6.5
  instance_type       = "t2.small.elasticsearch"
  instance_count      = 1
  ebs_size            = 35
  snapshot_start_hour = 23
  name_tag            = "CX Cloud"
  stream_name         = "cxcloud"

  whitelisted_ips = [
    "131.207.254.198/32",
    "63.34.141.220/32",
  ]
}
