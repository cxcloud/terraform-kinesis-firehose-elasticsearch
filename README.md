# Kinesis Firehose - Elasticsearch Terraform Module

Kinesis Firehose - Elasticsearch Terraform Module provision an Amazon Elasticsearch Service and a Kinesis Foirehose delivery stream that load streaming data into Amazon S3 and Amazon Elasticsearch Service.

## Module

The module will create a Kinesis Foirehose delivery stream and an Amazon Elasticsearch Service. Additionally it will create one S3 bucket for the compressed json logs and configure Kinesis Firehose to load the streaming data into the S3 bucket and into the Elasticsearch cluster. All IAM roles and access policies will be configured in order to work.

### Input Variables

The following table list the configurable parameters and their default values.

| Name | Description | Default |
| --- | --- | --- |
| region | AWS Region | eu-west-1 |
| es_name | Domain name for Elasticsearch | cxcloud |
| es_ver | Elasticsearch Version | 6.5 |
| es_instance_type | Instance type for Elasticsearch | t2.small.elasticsearch |
| es_instance_count | Amount of Elasticsearch nodes | 1 |
| es_dedicated_master_enabled | Use dedicated master | false |
| es_ebs_size | Size of EBS volume per instance | 35 |
| es_snapshot_start_hour | Start time of snapshot | 23 |
| es_name_tag | Name tag | cxcloud |
| es_whitelisted_ips | Whitelisted IPs to access ES | [] |
| stream_name | Kinesis Firehose Stream Name | cxcloud |
| s3_bucket | S3 bucket name for logs | "" |
| s3_buffer_size | S3 Buffer Size | 10 |
| s3_buffer_interval | S3 buffer interval | 60 |
| s3_compression_format | S3 log compression format | GZIP |
| es_index_name | Elasticsearch index name | cxcloud |
| es_type_name | Elasticsearch index type | logs |
| es_buffering_size | Elasticsearch buffering size | 10 |
| es_buffering_interval | Elasticsearch buffering interval | 60 |
| s3_backup_mode | S3 backup mode | AllDocuments |
| whitelisted_aws_account_arns | Whitelisted AWS ARNs to assume role for Kinesis Firehose access | [] |

### Output Variables

The following table list the output variables

| Name | Description |
| --- | --- |
| es_arn | Elasticsearch AWS ARN |
| endpoint | Elasticsearch Endpoint |
| domain_id | Elasticsearch domain id |
| domain_name | Elasticsearch Domain Name |
| kinesis_arn | Kineses Firehose Stream ARN |

### Example

The following example show how the module can be used. In this example release 1.0.0 is used.

```console
module "kinesis-firehose-elasticsearch" {
  source                       = "github.com/cxcloud/terraform-kinesis-firehose-elasticsearch?ref=v1.0.0"
  region                       = "eu-west-1"
  es_name                      = "cxcloud"
  es_ver                       = 6.5
  es_instance_type             = "t2.small.elasticsearch"
  es_instance_count            = 1
  es_dedicated_master_enabled  = false
  es_ebs_size                  = 35
  es_snapshot_start_hour       = 23
  es_name_tag                  = "CX Cloud"
  es_whitelisted_ips           = ["34.240.135.89/32"]
  stream_name                  = "cxcloud"
  s3_bucket                    = "sandbox-logging"
  s3_buffer_size               = 10
  s3_buffer_interval           = 60
  s3_compression_format        = "GZIP"
  es_index_name                = "cxcloud"
  es_type_name                 = "logs"
  es_buffering_size            = 10
  es_buffering_interval        = 60
  s3_backup_mode               = "AllDocuments"
  whitelisted_aws_account_arns = ["arn:aws:iam::012345678901:root"]
}
```
