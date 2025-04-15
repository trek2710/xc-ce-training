# F5 Distributed Cloud Tenant Details
api_p12_file = "./protected-se.p12"
console_url  = "console.ves.volterra.io"
tenant       = "f5-emea-ent"
namespace    = "s-archer"

# Project Details
prefix = "my-thing"

# Azure details
location     = "uksouth"

# F5 Distributed Cloud LB Details - Per App
domain                  = "ce-training.archf5.com"
shortname               = "ce-training"
origin_k8s_service_name = "ce-training.dc1-f5-demo"
origin_fqdn             = ""
origin_ip               = ""
origin_port             = 80
origin_site             = "my-site"