FROM c7-systemd-httpd-nginx-php7x-fpm
RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
RUN systemctl enable nginx.service; systemctl enable rh-php71-php-fpm
EXPOSE 80 443
CMD ["/usr/sbin/init"]
