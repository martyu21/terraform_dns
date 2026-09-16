mock_provider "windns" {}
mock_provider "vault" {}

override_data {
  target = data.vault_generic_secret.dns_data
  values = {
    data = {
      zone_name = "westside.local"
    }
  }
}


variables {

  dns_name  = "example"
  dns_records = ["1.2.3.4","2.3.4.5"]
  team_name = "my_team"
  app_name = "my_app"
  sub_app_name = "my_sub_app"
  environment = "dev"
  zone_name = "westside.local"
}


run "expect_failure_dns_name" {
  command = plan

  variables {
    dns_name = "Here-is-my-very-long-dns-record-name-that-should-exceed-the-number-of-characters-allowed-for-a-name"
  }

  expect_failures = [var.dns_name]
}
