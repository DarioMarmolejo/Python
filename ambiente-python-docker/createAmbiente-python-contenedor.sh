#! /bin/bash
echo 'deleting ambiente-python-contenedor...'
podman build -t simple_app .
echo 'deleted ambiente-python-contenedor...'