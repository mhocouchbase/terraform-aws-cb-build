provider "aws" {
  profile = local.profile
  region  = local.region
  shared_credentials_file = local.shared_credentials_file
}

resource "aws_route53_zone" "main" {
  name = local.name

  vpc {
    vpc_id = local.main_vpc
  }

  comment       = "Private zone for ${local.name}"
  force_destroy = local.force_destroy

  tags = {
    "Name"          = local.name
    "ProductDomain" = local.product_domain
    "Environment"   = local.environment
    "Description"   = "Private zone for ${local.name}"
    "ManagedBy"     = "terraform"
  }
}

resource "aws_route53_zone_association" "secondary" {
  count   = length(local.secondary_vpcs)
  zone_id = aws_route53_zone.main.zone_id
  vpc_id  = local.secondary_vpcs[count.index]
}
