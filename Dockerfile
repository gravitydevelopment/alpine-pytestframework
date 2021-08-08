# Download base image RedHat UBI8
FROM famiromli/alpine-python3.8.10:latest

# Installing Package 
#RUN yum module install python38 -y && \
#  ln -s /usr/bin/python3 /usr/bin/python && \
#  yum clean all

RUN apk --update add openjdk8-jre  


RUN python -m pip install robotframework==3.1.2 \     
    robotframework-seleniumlibrary==4.1.0 \
    robotframework-pythonlibcore==2.1.0 \
    robotframework-selenium2library==3.0.0 \
    xlrd==1.2.0

WORKDIR /usr/src/robotframework/tests

