module "rds_shortener_secrets" {
  

  source = "./../../.modules/secrets_manager_v2"
  
  module_enabled = var.rds_shortener_enabled ? 1 : 0
  
  company_name  = var.company_name
  environment   = var.environment
  
  secret_name        = "rds/shortener/admin-secrets"
  secret_description = "RDS shortener dashboard admin credentials"
  special = false

  secret_string = <<EOF
   {
    "username": "postgres",
    "url": "${try(aws_rds_cluster.shortener_cluster[0].endpoint, "unknown")}"
   }
  EOF

  map-migrated = var.map-migrated

}

