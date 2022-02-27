
module "vpc_animals4life" {
  #source = "github.com/amenur/terraform_modules//modules/vpc"
  source = "../../terraform_modules/modules/vpc"

  profile           = var.profile
  vpc_cidr_block    = "10.16.0.0/16"
  count_public      = 3
  public_cidr_block = [for i in range(48, 177, 64) : cidrsubnet("10.16.0.0/16", 8, i)]
  vpc_tags          = "animals4life-vpc"

  enable_ngw = false

  enable_vpc_flow_log = false

  count_private = 9

  private_cidr_block = flatten([
    [for i in range(0, 130, 64) : cidrsubnet("10.16.0.0/16", 8, i)],
    [for i in range(16, 145, 64) : cidrsubnet("10.16.0.0/16", 8, i)],
    [for i in range(32, 161, 64) : cidrsubnet("10.16.0.0/16", 8, i)],
  ])

}