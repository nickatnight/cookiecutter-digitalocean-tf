<p align="center">
    <a href="https://github.com/nickatnight/cookiecutter-digitalocean-tf/actions">
        <img alt="GitHub Actions status" src="https://github.com/nickatnight/cookiecutter-digitalocean-tf/actions/workflows/main.yml/badge.svg">
    </a>
    <a href="https://github.com/nickatnight/cookiecutter-digitalocean-tf/releases"><img alt="Release Status" src="https://img.shields.io/github/v/release/nickatnight/cookiecutter-digitalocean-tf"></a>
</p>

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
- `cd` to new project folder and follow [README](/%7B%7Bcookiecutter.project_slug%7D%7D/README.md)

Big thanks to [nemd](https://github.com/nemd/) / [ironhalik](https://github.com/ironhalik/) for the inspiration and Docker hax
