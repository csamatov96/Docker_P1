#This is telling Docker what base image to use for the container, and implicitly selecting the Python version to use, which in this case is 3.7. Docker Hub has base images for almost all supported versions of Python including 2.7.
#This example is using Python installed on Alpine Linux, a minimalist Linux distro, which helps keep the images for Docker small. Prefer Alpine unless there’s a compelling reason to use another base image such as Debian Jessie.
FROM python:alpine3.7 

#
COPY . /app

#
WORKDIR /app

#Also note is the RUN directive that is calling PyPi (pip) and pointing to the requirements.txt file. This file contains a list of the dependencies that the application needs to run. Because Flask is a dependency, it is included as such in the requirements.txt with a simple reference. You can also select version libraries if you need specific versions with requirements.txt. The file should also be in the root of the application.
RUN pip install -r requirements.txt

#
EXPOSE 5000

#
CMD python ./index.py