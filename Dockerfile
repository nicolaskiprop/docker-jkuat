#comment 03/08/2017
#start from a base image
FROM ubuntu:14.04
#install java and python
RUN apt-get update &&  apt-get -y upgrade &&  \
apt-get -y install python 3 &&  \  
# apt-get install openjdk-8-jre $$ \
 #apt-get install openjdk-8-jdk  && \
apt-get -y install python-pip && \
apt-get -y install nano
#apt-get install sbt


#create working directory


RUN mkdir ussd/
WORKDIR ussd/


#install framework
COPY . ussd/
RUN cd ussd/python && pip install requirements.txt

CMD ["python","sms.py"]
