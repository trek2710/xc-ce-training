locals {
  api_url = format("https://%s.%s/api", var.tenant, var.console_url)
}

variable "AZURE_CLIENT_ID" {
  type    = string
}

variable "AZURE_SUBSCRIPTION_ID" {
  type    = string
}

variable "AZURE_TENANT_ID" {
  type    = string
}

variable "AZURE_CLIENT_SECRET" {
  type    = string
}

variable "console_url" {
  type    = string
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

variable "shortname" {
  type = string
}

variable "origin_port" {
  type = string
}

variable "origin_ip" {
  type = string
}

variable "origin_site" {
  type = string
}

variable "origin_fqdn" {
  type = string
}

variable "origin_k8s_service_name" {
  type = string
}

variable "domain" {
  type = string
}

variable "location" {
  type = string
}

variable "prefix" {
  type = string
}