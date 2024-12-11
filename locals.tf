
locals {

  password_string = <<EOF
   {
    "password": "${random_password.this[0].result}",
   }
  EOF

  tags = {

    general = {
      "Environment"  = var.environment
      "Terraform"    = "true"
      "Owner"        = var.company_name
      "Workspace"    = terraform.workspace
      "map-migrated" = var.map-migrated
    }

  }

}
