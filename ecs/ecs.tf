provider "aws" {
  profile = local.profile
  region  = local.region
  shared_credentials_file = local.shared_credentials_file
}

resource "aws_ecs_cluster" "production" {
  name = "${local.ecs_cluster_name}-cluster"
}

