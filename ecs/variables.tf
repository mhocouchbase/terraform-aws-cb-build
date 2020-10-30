locals {

  profile = "cb-build"
  region  = "us-east-1"
  shared_credentials_file = "user/.aws/credentials"
}

locals {
  ecs_name = "aws-move-test2"
}
