FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]

RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN yum -y makecache fast
RUN yum -y --enablerepo=extras install epel-release centos-release-scl; yum -y update
RUN yum -y install wget

RUN yum -y install bzip2 htop httpd iftop logrotate mariadb-server mod_ssl mysql nginx openssh-clients openssh-server php php-fpm php-gd php-imap php-mbstring php-mcrypt php-mysql php-odbc php-pear php-pecl-geoip php-pecl-memcached php-pecl-redis php-pgsql php-snmp php-xml php-xmlrpc redis rsync subversion telnet tmux unar unzip vim-enhanced zip zlib-devel
RUN yum -y install rh-php71*
RUN yum -y install sclo-php71*

RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY www.yourdomain.com-php-fpm.conf /etc/opt/rh/rh-php71/php-fpm.d/www.yourdomain.com.conf
COPY www.yourdomain.com-httpd.conf /etc/httpd/conf.d/www.yourdomain.com.conf
#RUN mkdir /var/opt/rh/rh-php71/lib/php/session/www.yourdomain.com; /var/opt/rh/rh-php71/lib/php/wsdlcache/www.yourdomain.com; mkdir /var/www/www.yourdomain.com;
RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh
RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
RUN systemctl enable httpd.service; systemctl enable rh-php71-php-fpm

RUN yum clean all

EXPOSE 80 443
CMD ["/usr/sbin/init"]
