import os
import sys


DIGITALOCEAN_TOKEN = os.getenv("DIGITALOCEAN_TOKEN")


if not DIGITALOCEAN_TOKEN:
    print("ERROR: no DIGITALOCEAN_TOKEN found on host")

    # exits with status 1 to indicate failure
    sys.exit(1)


if not os.path.exists("{{ cookiecutter.ssh_pub_key_file }}"):
    print(f"ERROR: path '{{ cookiecutter.ssh_pub_key_file }}' does not exist")

    # exits with status 1 to indicate failure
    sys.exit(1)
