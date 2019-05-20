data "aws_caller_identity" "current" {}

# AWS Elasticsearch
module "es" {
  source                   = "./modules/es"
  name                     = "${var.es_name}"
  region                   = "${var.region}"
  account_id               = "${data.aws_caller_identity.current.account_id}"
  es_ver                   = "${var.es_ver}"
  instance_type            = "${var.es_instance_type}"
  instance_count           = "${var.es_instance_count}"
  dedicated_master_enabled = "${var.es_dedicated_master_enabled}"
  ebs_size                 = "${var.es_ebs_size}"
  snapshot_start_hour      = "${var.es_snapshot_start_hour}"
  name_tag                 = "${var.es_name_tag}"
  stream_name              = "${var.stream_name}"
  whitelisted_ips          = ["${var.es_whitelisted_ips}"]
}

# Kinesis Firehose
module "kinesis-firehose" {
  source                       = "./modules/kinesis-firehose"
  stream_name                  = "${var.stream_name}"
  account_id                   = "${data.aws_caller_identity.current.account_id}"
  region                       = "${var.region}"
  bucket                       = "${var.s3_bucket}"
  es_arn                       = "${module.es.arn}"
  s3_buffer_size               = "${var.s3_buffer_size}"
  s3_buffer_interval           = "${var.s3_buffer_interval}"
  s3_compression_format        = "${var.s3_compression_format}"
  es_index_name                = "${var.es_index_name}"
  es_type_name                 = "${var.es_type_name}"
  es_buffering_size            = "${var.es_buffering_size}"
  es_buffering_interval        = "${var.es_buffering_interval}"
  s3_backup_mode               = "${var.s3_backup_mode}"
  whitelisted_aws_account_arns = ["${var.whitelisted_aws_account_arns}"]
}
