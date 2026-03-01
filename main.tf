module "label" {
  source  = "cloudposse/label/null"
  version = "0.25.0"

  name = var.account_name
}

# VPC

module "vpc" {
  source  = "cloudposse/vpc/aws"
  version = "3.0.0"

  ipv4_primary_cidr_block          = var.cidr_block
  assign_generated_ipv6_cidr_block = true

  context = module.label.context
}

# Subnets

module "subnets" {
  source  = "cloudposse/dynamic-subnets/aws"
  version = "3.1.1"
  context = module.label.context

  vpc_id                  = module.vpc.vpc_id
  igw_id                  = [module.vpc.igw_id]
  ipv4_cidr_block         = [module.vpc.vpc_cidr_block]
  availability_zones      = var.availability_zones
  public_subnets_enabled  = true
  private_subnets_enabled = true
}
