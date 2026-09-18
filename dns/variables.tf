variable "dns_name" {
  type = string

  validation {
    condition     = length(var.dns_name) <= 63
    error_message = "DNS names must be a maximum of 63 characters"
  }

  validation {
    condition = !can(regex("--", var.dns_name))
    error_message = "dns_name must not contain consecutive hyphens."
  }

  validation {
      condition = (
        !startswith(var.dns_name, "-") &&
        !endswith(var.dns_name, "-")
      )
      error_message = "dns_name must not start or end with a hyphen."
    }
}

variable "dns_records" {
  type = list(string)
}

variable "team_name" {
  type = string
}

variable "app_name" {
  type = string
}

variable "sub_app_name" {
  type = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, test, prod)"
  type        = string
}

