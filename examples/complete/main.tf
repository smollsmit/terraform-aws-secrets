
module "this" {
  

  module_enabled = true
  
  company_name   = var.company_name
  environment    = var.environment
  
  secret_name        = "admin-secrets"
  secret_path        = "env/service"
  secret_description = "Admin credentials"

  special = false

  secret_string = <<EOF
   {
    "username": "admin",
    "url": "https://api.example.com")}"
   }
  EOF

}

