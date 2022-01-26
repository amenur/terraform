module "terraform_backend" {
  #source = "github.com/amenur/terraform_modules//modules/backend_kms"
  source = "../../terraform_modules/modules/backend_kms"

  deletion_windows_day = 30
  enable_key_rotation  = true
  key_alias            = "alias/terraform-bucket-kms-key"
  s3_bucket_name       = "aramis-terraform-backend"
  dynamodb_table_name  = "terraform-state"
  read_capacity        = 1
  write_capacity       = 1
  dynamodb_encryption  = true
  log_prefix           = "log/"

}