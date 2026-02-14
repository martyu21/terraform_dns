data "vault_generic_secret" "dns_data" {
    path = "${local.dns_kmaas_path}/dns/cardfile"
}