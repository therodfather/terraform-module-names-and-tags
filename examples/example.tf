provider "aws" {
  region = var.region
}

module "resource_info" {
  source              = "../"
  application_name    = "TESTAPP"
  service_name        = "TEST"
  workspace           = terraform.workspace
  application_id      = "123456"
  data_classification = "Confidential"
  owner               = "Rod"
  scm_branch          = var.scm_branch
  scm_commit_id       = var.scm_commit_id
  scm_project         = var.scm_project
  scm_repo            = var.scm_repo
  issrcl_level        = "Low"
  environment         = var.environment
  additional_tags = {
    "Test" = "Success"
  }
}

resource "aws_sqs_queue" "my_queue" {
  name = "${module.resource_info.upper_resource_name}-TEST-QUEUE"
  tags = module.resource_info.tags
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${module.resource_info.lower_resource_name}-test-bucket"
  acl    = "private"
  tags   = module.resource_info.tags
}

resource "aws_s3_bucket_object" "file" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "test_file"
  source = "files/test_file"
  tags   = module.resource_info.short_tags
}
