module "elasticache_parameter_group" {
  source = "../.."

  name         = var.name
  organization = var.organization
  environment  = var.environment
  product      = var.product
  repo         = var.repo
  owner        = var.owner
}