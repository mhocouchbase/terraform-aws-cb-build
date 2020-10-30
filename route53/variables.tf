locals {

  profile = "cb-build"
  region  = "us-east-1"
  shared_credentials_file = "user/.aws/credentials"
}

locals {
  name = "couchbase.com"
  product_domain = "couchbase.com"
  environment = "dev"
  main_vpc = "vpc-0042b8898066b98e9"
  secondary_vpcs = []
  force_destroy = false
}
