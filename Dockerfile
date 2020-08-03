# Container image that runs your code
FROM python:3.7.8
# COPY . /test

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
COPY . .
RUN chmod +x entrypoint.sh
RUN ls -als
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]