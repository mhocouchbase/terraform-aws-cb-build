locals {

  profile = "cb-build"
  region  = "us-east-1"
  shared_credentials_file = "user/.aws/credentials"
}

locals {
  vpc_service_name = "aws-move-test2"
  cidr_block = "10.10.0.0/16"
  public_subnets = {
    "${local.region}a" = "10.10.101.0/24"
    "${local.region}b" = "10.10.102.0/24"
    "${local.region}c" = "10.10.103.0/24"
  }
  private_subnets = {
    "${local.region}a" = "10.10.201.0/24"
    "${local.region}b" = "10.10.202.0/24"
    "${local.region}c" = "10.10.203.0/24"
  }
}
