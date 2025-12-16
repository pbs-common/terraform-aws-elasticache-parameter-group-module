resource "aws_elasticache_parameter_group" "parameter_group" {
  name   = var.name
  family = "${var.engine}${var.parameter_group_version}"

  description = "ElastiCache parameter group for ${var.name} ${var.engine}"

  dynamic "parameter" {
    for_each = var.parameters
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }

  tags = local.tags
}
