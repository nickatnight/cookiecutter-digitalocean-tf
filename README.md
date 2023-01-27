# cookiecutter-digitalocean-tf
[Cookiecutter](https://github.com/cookiecutter/cookiecutter) template for scaffolding web application/api infrastructure on DigitalOcean with Terraform and Ansible

## Quickstart
Install the latest Cookiecutter if you haven't installed it yet (this requires Cookiecutter 1.4.0 or higher)..and latest version of Python `requests` library:
```sh
pip install -U cookiecutter requests
```

Generate project:
```sh
cookiecutter https://github.com/nickatnight/cookiecutter-digitalocean-tf.git
```

Then:
- `cd` to new project folder and follow [README]({{ cookiecutter.project_slug }}/README.md)


Big thanks to [nemd](https://github.com/nemd/) / [ironhalik](https://github.com/ironhalik/) for the inspiration and Docker hax
