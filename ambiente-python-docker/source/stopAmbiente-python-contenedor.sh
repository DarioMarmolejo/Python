#! /bin/bash
echo 'stopping and deleting ambiente-python-contenedor...'
podman stop simple_app
podman rm simple_app
echo 'stoped ambiente-python-contenedor...'