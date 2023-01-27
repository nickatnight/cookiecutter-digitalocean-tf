resource "digitalocean_domain" "prod_{{ cookiecutter.project_slug_simple }}" {
  name       = var.project_sub_root_domain
  ip_address = digitalocean_droplet.prod_{{ cookiecutter.project_slug_simple }}.ipv4_address
}
