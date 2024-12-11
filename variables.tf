# ---------- GENERAL

variable "company_name" {
  type        = string
 default     = ""
}

variable "vpc_name" {
  type        = string
  default     = ""
}

variable "environment" {
  type        = string
  default     = ""
}

variable "map-migrated" {
  type        = string
  default     = ""
}

variable "module_enabled" {
  type        = string
  default     = ""
}


# ---------- SECRETS

variable "secret_name" {
  type        = string
  default     = ""
}

variable "secret_path" {
  type        = string
  default     = ""
}
variable "secret_description" {
  type        = string
  default     = ""
}

variable "secret_string" {
  type        = string
  default     = ""
}

variable "length" {
  type        = string
  default     = "16"
}

variable "special" {
  type        = bool
  default     = true
}

variable "numeric" {
  type        = bool
  default     = true
}

variable "lower" {
  type        = bool
  default     = true
}

variable "upper" {
  type        = bool
  default     = true
}

variable "override_special" {
  type        = string
  default     = "@"
}
