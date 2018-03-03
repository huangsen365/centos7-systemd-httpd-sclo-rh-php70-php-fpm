FROM c7-systemd
RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN yum -y makecache fast
RUN yum -y --enablerepo=extras install epel-release centos-release-scl; yum -y update
RUN yum -y install wget
RUN yum clean all
