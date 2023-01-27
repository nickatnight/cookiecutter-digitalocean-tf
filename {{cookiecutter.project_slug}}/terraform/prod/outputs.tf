output "Public-Ip" {
  value = digitalocean_droplet.prod_{{ cookiecutter.project_slug_simple }}.ipv4_address
}
