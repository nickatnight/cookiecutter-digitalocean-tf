resource "digitalocean_droplet" "prod_{{ cookiecutter.project_slug_simple }}" {
  # Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys
  ssh_keys           = [{{ cookiecutter.do_droplet_ssh_key_id }}, ]         # Key example
  image              = "{{ cookiecutter.do_droplet_image }}"
  region             = "{{ cookiecutter.do_droplet_region }}"
  size               = "{{ cookiecutter.do_droplet_size }}"
  backups            = true
  ipv6               = true
  name               = "${var.env}-${var.project_sub_root_domain}"
}

resource "null_resource" "provisioner" {
    provisioner "local-exec" {
        environment = {
            ANSIBLE_SSH_RETRIES       = "30"
            ANSIBLE_HOST_KEY_CHECKING = "False"
        }

        command = "ansible-playbook ../../ansible/provision.yml --extra-vars 'env_name=${var.env} host_ip=${digitalocean_droplet.prod_{{ cookiecutter.project_slug_simple }}.ipv4_address}' -u root -i ${digitalocean_droplet.prod_{{ cookiecutter.project_slug_simple }}.ipv4_address},"
    }
}
