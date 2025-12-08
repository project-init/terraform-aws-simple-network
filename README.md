# Project Init AWS EC2 Backed ECS

## Quick Start

1. `mise format`
2. `mise docs`

## Usage

Check our [Examples](examples) for full usage information.

## Useful Docs

* [Code of Conduct](./CODE_OF_CONDUCT.md)
* [Contribution Guide](./CONTRIBUTING.md)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.81.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_label"></a> [label](#module\_label) | cloudposse/label/null | 0.25.0 |
| <a name="module_subnets"></a> [subnets](#module\_subnets) | cloudposse/dynamic-subnets/aws | 2.4.2 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | cloudposse/vpc/aws | 3.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | The account name to create the vpc in. Will be used as the vpc name. | `string` | n/a | yes |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | List of availability zones for the VPC | `list(string)` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_map"></a> [network\_map](#output\_network\_map) | n/a |
<!-- END_TF_DOCS -->