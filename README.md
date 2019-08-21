# Docker_P1
Containerize a Python App

## To build the image, run Docker build from a command line or terminal that is in the root directory of the application.
docker build --tag my-python-app .

## This will “tag” the image my-python-app and build it. After it is built, you can run the image as a container.
docker run --name python-app -p ___:5000 my-python-app


# This starts the application as a container. The –name parameter names the container and the -p parameter maps the host’s port 5000 to the containers port of 5000. Lastly, the my-python-app refers to the image to run. After it starts, you should be able to browse to the container. Depending on how you are running Docker depends on what the IP address of the application will be. Docker for Windows and Docker for Mac will be able to use 127.0.0.1. For other instances, it will be the host IP of a VM or physical machine you are running Docker on.

# Naturally, more complex scenarios will require more attention to details, but the basic flow is the same for most all Python apps. Putting it all together will enable containerized Python apps in short order though!
