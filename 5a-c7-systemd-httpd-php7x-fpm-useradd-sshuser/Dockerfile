FROM c7-systemd-httpd-nginx-php7x-fpm
RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY www.yourdomain.com-php-fpm.conf /etc/opt/rh/rh-php71/php-fpm.d/www.yourdomain.com.conf
COPY www.yourdomain.com-php-fpm.conf /etc/opt/rh/rh-php71/php-fpm.d/www.yourdomain.com.conf.bak
COPY www.yourdomain.com-httpd.conf /etc/httpd/conf.d/www.yourdomain.com.conf
COPY www.yourdomain.com-httpd.conf /etc/httpd/conf.d/www.yourdomain.com.conf.bak

RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc

COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh


RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
RUN systemctl enable httpd.service; systemctl enable rh-php71-php-fpm; systemctl disable sshd;
EXPOSE 80 443 22
CMD ["/usr/sbin/init"]
