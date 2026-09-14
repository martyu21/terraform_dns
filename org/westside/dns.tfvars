dns_records = [
  {
    dns_name    = "newtest1"
    dns_records = ["0.0.0.0","0.0.0.11"]
  },
    dns_name    = "badrecord"
    dns_records = ["0.0.0.1","0.0.0.2"]
]

team_name     = "westside"
app_name      = "towers"
sub_app_name  = ""
environment   = "dev"