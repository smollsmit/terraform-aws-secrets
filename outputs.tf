
# ---------- OUTPUTS

output "password_plain" {
  value = try(random_password.this[0].result, "undefined")
  sensitive = true
}

output "password_bcrypt" {
  value = bcrypt(try(random_password.this[0].result, "undefined"))
}