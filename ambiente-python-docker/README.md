##Crear un main 

se creara un main.py para la app con fasAPI

##Crear requerimientos

Se creara un txt con los requerimientos a instalar (framework y servidor)

##Crear el Containerfile

Se creara el Containerfile o Dockerfile con los requerimientos de la app.
Estos requerimientos deben de simular la siguiente estructura:

FROM python:3.10.6
COPY . usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

ENTRYPOINT uvicorn --host 0.0.0.0 main:app --reload

##Arrancar el proyecto en el gestor de contenedores(Docker o podman)
podman build -t simple_app .

con ese comando se creara la imagen del proyecto

##Correr un contenedor del proyecto

podman run -it -p 8000:8000 -v ~/usr/src/app simple_app

Con este comando se arrancara el proyecto sobre el contenedor