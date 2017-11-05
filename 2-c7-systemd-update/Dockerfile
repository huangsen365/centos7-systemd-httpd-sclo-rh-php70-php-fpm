FROM c7-systemd
RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime
RUN yum -y makecache fast; yum -y --enablerepo=extras install epel-release centos-release-scl; yum -y update
RUN yum -y install wget
RUN yum clean all
