variable "dns_name" {
  type = string

  validation {
    condition     = length(var.dns_name) <= 63
    error_message = "DNS names must be a maximum of 63 characters"
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

