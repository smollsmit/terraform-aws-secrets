
resource "random_password" "this" {
  
  count = var.module_enabled ? 1 : 0

  length  = var.length
  special = var.special
  numeric = var.numeric
  lower   = var.lower
  upper   = var.upper
  
  override_special = var.override_special

}

resource "aws_secretsmanager_secret" "this" {
  
  count = var.module_enabled ? 1 : 0

  name                    = "${var.secret_path}/${var.secret_name}"
  description             = var.secret_description
  recovery_window_in_days = 0
  
  tags = merge(
    {
      Name = var.secret_name
    },
    lookup(local.tags, "general", {})
  )

}

resource "aws_secretsmanager_secret_version" "this" {
  
  count = var.module_enabled ? 1 : 0
  
  secret_id = aws_secretsmanager_secret.this[0].id
  
  secret_string = local.password_string

}
