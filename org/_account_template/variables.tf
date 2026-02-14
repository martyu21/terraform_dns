variable "dns_records" {
  description = "The DNS record name (e.g., app01)"
  type        = list(object({
    dns_name    = string
    dns_records = list(string)
  }))
  default = []
}

variable "team_name" {
  description = "Team or business unit owning the DNS record"
  type        = string
}

variable "app_name" {
  description = "Application name associated with this DNS record"
  type        = string
}

variable "sub_app_name" {
  description = "Sub-application or environment name"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, test, prod)"
  type        = string
}

