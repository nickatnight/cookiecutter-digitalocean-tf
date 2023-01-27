import os
from typing import Optional, Dict

import requests


PROJECT_DIRECTORY = os.path.realpath(os.path.curdir)
DOCR_URL = "https://api.digitalocean.com/v2/registry"
DIGITALOCEAN_TOKEN = os.getenv("DIGITALOCEAN_TOKEN")


def remove_file(filepath) -> None:
    os.remove(os.path.join(PROJECT_DIRECTORY, filepath))


def make_request(url: str, headers: Optional[Dict] = None) -> Optional[requests.Response]:
    r = None
    try:
        r = requests.get(url, headers=headers or {})
        r.raise_for_status()
    except requests.HTTPError as httpe:
        print(httpe)
    except Exception as e:
        print(e)
    return r


def check_container_registry() -> None:
    headers = {
        "Authorization": f"Bearer {DIGITALOCEAN_TOKEN}",
        "Content-Type": "application/json",
    }
    resp: Optional[requests.Response] = make_request(DOCR_URL, headers=headers)

    # user already has container registry, so delete modules
    if resp and resp.status_code == 200:
        print("Found existing Container Registry...removing Terraform registry.tf files")
        remove_file("terraform/{{ cookiecutter.lower_env_name }}/registry.tf")
        remove_file("terraform/prod/registry.tf")
        return


check_container_registry()
