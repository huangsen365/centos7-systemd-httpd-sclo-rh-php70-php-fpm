FROM c7-systemd-update
#RUN yum makecache fast
RUN yum -y install bzip2 htop httpd iftop logrotate mariadb-server mod_ssl mysql nginx openssh-clients openssh-server php php-fpm php-gd php-imap php-mbstring php-mcrypt php-mysql php-odbc php-pear php-pecl-geoip php-pecl-memcached php-pecl-redis php-pgsql php-snmp php-xml php-xmlrpc redis rsync subversion telnet tmux unar unzip vim-enhanced zip zlib-devel
RUN yum -y install rh-php71*
RUN yum -y install sclo-php71*

RUN yum clean all

CMD ["/usr/sbin/init"]
