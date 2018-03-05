FROM c7-systemd-httpd-php7x-fpm
RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY www.yourdomain.com-php-fpm.conf /etc/opt/rh/rh-php71/php-fpm.d/www.yourdomain.com.conf
COPY www.yourdomain.com-httpd.conf /etc/httpd/conf.d/www.yourdomain.com.conf
#RUN mkdir /var/opt/rh/rh-php71/lib/php/session/www.yourdomain.com; /var/opt/rh/rh-php71/lib/php/wsdlcache/www.yourdomain.com; mkdir /var/www/www.yourdomain.com;
RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
#COPY sed_apache_sshuser.sh /tmp/sed_apache_sshuser.sh
COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh
#RUN sh /tmp/sed_apache_sshuser.sh
#RUN sed -i -e 's/User\ apache/User\ sshuser/g' -e 's/Group\ apache/Group\ sshuser/g' /etc/httpd/conf/httpd.conf
RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
EXPOSE 80 443
CMD ["/usr/sbin/init"]
