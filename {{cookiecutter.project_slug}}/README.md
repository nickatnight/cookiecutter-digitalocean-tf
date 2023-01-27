# {{ cookiecutter.project_slug }}

Scaffold infrastructure for web apis/apps.

## Features
- Terraform modules to scaffold DigitalOcean [Droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet), [Firewall](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/firewall), [Domain](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain), and [Container Registry](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry) resources.
- Ansible playbook to provision Droplets
- Docker/Swarm to orchestrate container deployments 
- node-exporter and cadvisor to monitor stack

## Usage
`cd` to prod
```sh
$ cd terraform/prod
```

Terraform Init, Plan, and Apply
```sh
$ terraform init
$ terraform plan
$ terraform apply
```

Once Terraform has successfully finished, copy the "Public-Ip" from the terminal output and ssh into the newly created Droplet
```sh
$ ssh ubuntu@ip-from-stdout
```

## Architecture
<p align="center">
    <a href="#"><img alt="https://imgur.com/xmDWRic" src="https://i.imgur.com/xmDWRic.png"></a>
</p>