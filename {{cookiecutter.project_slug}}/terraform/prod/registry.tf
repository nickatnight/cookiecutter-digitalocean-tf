# Create a new container registry
resource "digitalocean_container_registry" "prod_{{ cookiecutter.project_slug_simple }}" {
  name                   = "{{ cookiecutter.do_container_registry_name }}"
  subscription_tier_slug = "{{ cookiecutter.do_container_registry_subscription_tier_slug }}"
}
