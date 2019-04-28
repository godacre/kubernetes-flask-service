FROM centos:latest

RUN yum --enablerepo=extras install -y epel-release
RUN yum install -y python python-dev python-pip
RUN pip install Flask flask-wtf
WORKDIR /home/centos/anagram_app
COPY . /home/centos/anagram_app
CMD /usr/bin/python ./app.py
EXPOSE 5000

