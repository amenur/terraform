output "region" {
  value = var.region
}

output "s3_bucket_id" {
  value = module.terraform_backend.s3_bucket_id
}

output "s3_bucket_arn" {
  value = module.terraform_backend.s3_bucket_arn
}

output "dynamodb_table_id" {
  value = module.terraform_backend.dynamodb_table_id
}

output "dynamodb_table_arn" {
  value = module.terraform_backend.dynamodb_table_arn
}

output "kms_key_id" {
  value = module.terraform_backend.kms_key_id
}

output "kms_key_arn" {
  value = module.terraform_backend.kms_key_arn
}

# output "log_prefix" {
#   value = module.terraform_backend.log_prefix
# }

