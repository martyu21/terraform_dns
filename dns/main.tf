resource "windns_record" "record" {
  zone_name = data.vault_generic_secret.dns_data.data["zone_name"]
  type      = "A"

  name      = var.dns_name
  records   = var.dns_records
}