module "subdomain" {
  source = "project-init/simple-network/aws"
  # Project Init recommends pinning every module to a specific version
  # version = "vX.X.X"

  account_name       = "aws-account-name"
  cidr_block         = "10.1.0.0/16"
  availability_zones = ["us-east-1a", "us-east-1b"]
}