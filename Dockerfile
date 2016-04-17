FROM centos:centos7
MAINTAINER mgoddard@cray.com
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
ADD . /elkclient
RUN cd /elkclient && pip install -r requirements.txt .
CMD ["/bin/sleep", "infinity"]
