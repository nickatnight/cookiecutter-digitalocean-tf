resource "digitalocean_domain" "{{ cookiecutter.lower_env_name }}_{{ cookiecutter.project_slug_simple }}" {
  name       = var.project_sub_root_domain
  ip_address = digitalocean_droplet.{{ cookiecutter.lower_env_name }}_{{ cookiecutter.project_slug_simple }}.ipv4_address
}
