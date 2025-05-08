# Arvan Cloud Infrastructure Automation with Terraform and Ansible

This project demonstrates an end-to-end automation solution for deploying and configuring a LAMP (Linux, Apache, MySQL, PHP) stack on Arvan Cloud using Terraform for infrastructure provisioning and Ansible for configuration management.

## Project Structure

```
.
├── main.tf                 # Main Terraform configuration
├── variables.tf            # Terraform variable definitions
├── terraform.tfvars        # Terraform variable values
├── provider.tf             # Terraform provider configuration
├── output.tf              # Terraform output definitions
├── inventory.tpl          # Ansible inventory template
├── playbook.yml           # Main Ansible playbook
├── module/                # Terraform modules directory
│   └── eco1/             # Arvan Cloud instance module
└── roles/                # Ansible roles
    ├── common/           # Common server configuration
    ├── apache/           # Apache web server setup
    ├── mysql/            # MySQL database setup
    └── php/              # PHP configuration
```

## Prerequisites

- Terraform (v1.0.0 or later)
- Ansible (v2.9.0 or later)
- Arvan Cloud account and API credentials
- SSH key pair

## Configuration

1. Clone the repository:
   ```bash
   git clone https://github.com/Maede-alv/arvan-terraform-ansible-end-to-end-automation.git
   cd arvan-terraform-ansible-end-to-end-automation
   ```

2. Configure your Arvan Cloud credentials in `terraform.tfvars`:
   ```hcl
   api_key = "your-api-key"
   ```

3. Update other variables in `terraform.tfvars` as needed:
   - `region`
   - `machine_name`
   - `flavor_id`
   - `image_id`
   - `ssh_key_name`
   - `network_id`
   - `security_group_id`

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the planned changes:
   ```bash
   terraform plan
   ```

3. Apply the infrastructure:
   ```bash
   terraform apply
   ```

The automation will:
1. Provision a virtual machine on Arvan Cloud
2. Generate an Ansible inventory file
3. Configure the LAMP stack using Ansible roles

## Ansible Roles

The project includes the following Ansible roles:

- `common`: Basic server configuration and updates
- `apache`: Apache web server installation and configuration
- `mysql`: MySQL database server setup
- `php`: PHP installation and configuration

## Cleanup

To destroy the infrastructure:
```bash
terraform destroy
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.