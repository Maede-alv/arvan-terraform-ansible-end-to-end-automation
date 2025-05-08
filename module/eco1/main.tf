resource "arvan_abrak" "eco1" {
  region          = var.region
  name            = var.machine_name
  flavor_id       = var.flavor_id
  image_id        = var.image_id
  disk_size       = 25
  ssh_key_name    = var.ssh_key_name
  networks = [
    {
      network_id = var.network_id
    }
  ]
  security_groups = [var.security_group_id]
}