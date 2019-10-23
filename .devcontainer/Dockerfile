
FROM ubuntu:bionic
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y install apt-utils

RUN apt-get -y install curl nodejs npm python3-flask python3-pip screen tmux htop 

RUN npm install -g elm
RUN npm install -g elm-format
RUN npm install -g elm-test

RUN pip3 install pylint autopep8

# make elm reactor and backend accessible
EXPOSE 8000 5000