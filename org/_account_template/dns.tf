module "dns" {
    for_each = { for idx, vm in var.dns_records : idx => vm }
    source   = "../../dns"

    dns_name        = each.value.dns_name
    dns_records     = each.value.dns_records
    team_name       = var.team_name
    app_name        = var.app_name
    sub_app_name    = var.sub_app_name
    environment     = var.environment

    providers = {
        windns = windns
        vault  = vault
    }
}