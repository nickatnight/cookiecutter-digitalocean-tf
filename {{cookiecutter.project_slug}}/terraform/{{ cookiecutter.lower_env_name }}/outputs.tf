output "Public-Ip" {
  value = digitalocean_droplet.{{ cookiecutter.lower_env_name }}_{{ cookiecutter.project_slug_simple }}.ipv4_address
}