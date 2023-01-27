terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"

}

variable "env" {
  description = "Stack environment."
  default     = "{{ cookiecutter.lower_env_name }}"
}

variable "project_root_domain" {
  description = "Root domain name for the project."
  default     = "{{ cookiecutter.project_root_domain }}"
}

variable "project_sub_root_domain" {
  description = "subdomain domain name for the project."
  default     = "{{ cookiecutter.sub_domain_name }}-{{ cookiecutter.lower_env_name }}.{{ cookiecutter.project_root_domain }}"
}
