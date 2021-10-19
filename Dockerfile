# Download base image ALPINE
FROM famiromli/alpine-python3.8.10:latest

# Installing Package
#RUN yum module install python38 -y && \
#  ln -s /usr/bin/python3 /usr/bin/python && \
#  yum clean all

RUN apk --update add openjdk8-jre \
    alpine-sdk && apk add libffi-dev openssl-dev

RUN python -m pip install --upgrade pip

RUN python -m pip install robotframework \
    robotframework-pythonlibcore \
    robotframework-pabot \
    robotframework-pageobjectlibrary \
    robotframework-seleniumlibrary \
    robotframework-selenium2library \
    robotframework-faker \
    xlrd \
    PyYAML

WORKDIR /usr/src/robotframework/tests
