resource "volterra_app_firewall" "recommended" {
  count = 1
  name      = format("%s-git-act-tf", var.shortname)
  namespace = var.namespace

  blocking = true

  allow_all_response_codes   = true
  default_anonymization      = true
  use_default_blocking_page  = true
  default_detection_settings = true
}