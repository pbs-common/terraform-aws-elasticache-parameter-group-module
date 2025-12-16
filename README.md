# PBS TF ElastiCache Parameter Group Module

## Installation

### Using the Repo Source

Use this URL for the source of the module. See the usage examples below for more details.

```hcl
github.com/pbs/terraform-aws-elasticache-parameter-group-module?ref=1.0.0
```

### Alternative Installation Methods

More information can be found on these install methods and more in [the documentation here](./docs/general/install).

## Usage

This module creates an ElastiCache parameter group to be used in integration with an ElastiCache cluster.

See the [ElastiCache Redis Standalone Module](https://github.com/pbs/terraform-aws-elasticache-redis-standalone-module) and [ElastiCache Memcached Module](https://github.com/pbs/terraform-aws-elasticache-memcached-module) for modules to provision a cluster that uses this parameter group.

Integrate this module like so:

```hcl
module "elasticache_parameter_group" {
  source = "github.com/pbs/terraform-aws-elasticache-parameter-group-module?ref=1.0.0"

  name = "example"

  # Tagging Parameters
  organization = var.organization
  environment  = var.environment
  product      = var.product
  repo         = var.repo

  # Optional Parameters
}
```

## Adding This Version of the Module

If this repo is added as a subtree, then the version of the module should be close to the version shown here:

`1.0.0`

Note, however that subtrees can be altered as desired within repositories.

Further documentation on usage can be found [here](./docs).

Below is automatically generated documentation on this Terraform module using [terraform-docs][terraform-docs]

---

[terraform-docs]: https://github.com/terraform-docs/terraform-docs

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elasticache_parameter_group.parameter_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) | resource |
| [aws_default_tags.common_tags](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/default_tags) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (sharedtools, dev, staging, qa, prod) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the elasticache parameter group. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Organization using this module. Used to prefix tags so that they are easily identified as being from your organization | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | Tag used to group resources according to product | `string` | n/a | yes |
| <a name="input_repo"></a> [repo](#input\_repo) | Tag used to point to the repo using this module | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Engine of the elasticache parameter group. | `string` | `"redis"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | Tag used to group resources according to owner | `string` | `"plops"` | no |
| <a name="input_parameter_group_version"></a> [parameter\_group\_version](#input\_parameter\_group\_version) | The version being used for the application when creating a parameter group. | `string` | `"7"` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Additional parameters that will be added to parameter group. | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Extra tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Parameter group name |
