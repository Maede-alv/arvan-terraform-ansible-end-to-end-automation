variable "region" {
  type        = string
  description = "this is the region id"
  default = "ir-thr-fr1"
}
variable "flavor_id" {
  type        = string
  description = "this is flavor id of the resource"
  default = "eco-1-1-0"
}
variable "image_id" {
  type        = string
  description = "this is image id of os"
  default = "7f5add4f-fe20-4f41-a41c-addc42c42326"
}
variable "ssh_key_name" {
  type        = string
  description = "this is the ssh key name"
}
variable "machine_name" {
  type        = string
  description = "this is machine's name"
  default = "arvan-instance"
}
variable "network_id" {
  type = string
  description = "chosen network id"
}
variable "security_group_id" {
  type = string
  description = "default security group id"
}
variable "api_key" {
  type = string
  description = "providers api key"
}