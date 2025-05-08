module "eco1" {
  source            = "./module/eco1"
  region            = var.region
  machine_name      = var.machine_name
  flavor_id         = var.flavor_id
  image_id          = var.image_id
  ssh_key_name      = var.ssh_key_name
  network_id        = var.network_id
  security_group_id = var.security_group_id
  api_key           = var.api_key
}

data "template_file" "inventory" {
  template = file("${path.module}/inventory.tpl")
  vars = {
    node_public_ip               = module.eco1.public_ip
    ansible_user                 = var.ansible_user
    ansible_ssh_private_key_file = var.ssh_private_key_file
  }
}

resource "local_file" "inventory" {
  content    = data.template_file.inventory.rendered
  filename   = "${path.module}/inventory"
  depends_on = [module.eco1]
}

resource "null_resource" "ansible_provisioner" {
  depends_on = [
    local_file.inventory,
    module.eco1
  ]

  provisioner "local-exec" {
    command = "ansible-playbook -i inventory playbook.yml"
    environment = {
      ANSIBLE_HOST_KEY_CHECKING = "False"
    }
  }
}