variable "dns_name" {
  type = string
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
