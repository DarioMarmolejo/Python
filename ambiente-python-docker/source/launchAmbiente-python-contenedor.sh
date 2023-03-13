#! /bin/bash
./stopAmbiente-python-contenedor.sh
echo 'starting ambiente-python-contenedor...'
podman run -it -p 8000:8000 --name simple_app -v ~/usr/src/app localhost/simple_app
podman start localhost/simple_app
echo 'started ambiente-python-contenedor at localhost:8000'