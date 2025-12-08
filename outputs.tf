output "network_map" {
  value = {
    vpc_id                  = module.vpc.vpc_id
    ipv4_primary_cidr_block = module.vpc.vpc_cidr_block
    private_subnet_ids      = module.subnets.private_subnet_ids
    public_subnet_ids       = module.subnets.public_subnet_ids
    public_route_table_ids  = module.subnets.public_route_table_ids
    private_route_table_ids = module.subnets.private_route_table_ids
  }
}
