data "aws_iam_policy_document" "es_policy" {
  statement {
    actions = ["es:*"]

    resources = [
      "arn:aws:es:${var.region}:${var.account_id}:domain/${var.name}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    condition {
      test     = "IpAddress"
      variable = "aws:SourceIp"
      values   = var.whitelisted_ips
    }
  }

  statement {
    actions = ["es:*"]

    resources = [
      "arn:aws:es:${var.region}:${var.account_id}:domain/${var.name}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = ["arn:aws:firehose:${var.region}:${var.account_id}:deliverystream/${var.stream_name}"]
    }
  }
}

resource "aws_elasticsearch_domain" "cxcloud" {
  count                 = var.create_es ? 1 : 0
  domain_name           = var.name
  elasticsearch_version = var.es_ver

  cluster_config {
    instance_type            = var.instance_type
    instance_count           = var.instance_count
    dedicated_master_enabled = var.dedicated_master_enabled
  }

  ebs_options {
    ebs_enabled = true
    volume_type = "gp2"
    volume_size = var.ebs_size
  }

  snapshot_options {
    automated_snapshot_start_hour = var.snapshot_start_hour
  }

  tags = {
    Name = var.name_tag
  }

  access_policies = data.aws_iam_policy_document.es_policy.json
}
