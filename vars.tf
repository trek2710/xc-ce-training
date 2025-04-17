locals {
  api_url       = format("https://%s.%s/api", var.tenant, var.console_url)
  f5xc_sms_name = format("%s-site-%s", var.prefix, random_id.id.hex)
  azs = [
    for each_az in var.azs_short : format("%s%s", var.location, each_az)
  ]
}

variable "azs_short" {
  description = "Assumes three AZs within region.  Locals above will format the full AZ names based on Region"
  default     = ["1", "2", "3"]
}

variable "f5xc_sms_node_count" {
  type = number
}

variable "f5xc_sms_description" {
  type    = string
}

variable "prefix" {
  type    = string
}

variable "f5xc_sms_instance_type" {
  type        = string
}

variable "f5xc_sms_storage_account_type" {
  type        = string
}

variable "owner" {
  type = string
}

variable "console_url" {
  type = string
}

variable "tenant" {
  type = string
}

variable "api_p12_file" {
  type = string
}

variable "namespace" {
  type = string
}

variable "location" {
  type = string
}