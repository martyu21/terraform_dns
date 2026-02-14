locals {
    dns_kmaas_path = lower("secret/team_data/${var.team_name}/${var.app_name}${var.sub_app_name != null && var.sub_app_name != "" ? "/${var.sub_app_name}" : ""}/${var.environment}" )
}