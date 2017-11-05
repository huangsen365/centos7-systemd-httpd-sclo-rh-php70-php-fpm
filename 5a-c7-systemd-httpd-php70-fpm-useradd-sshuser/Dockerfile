FROM c7-systemd-httpd-php70-fpm
RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php70/php-fpm.d/www.conf /etc/opt/rh/rh-php70/php-fpm.d/www.conf.bak
COPY www.yourdomain.com-php-fpm.conf /etc/opt/rh/rh-php70/php-fpm.d/www.yourdomain.com.conf
COPY www.yourdomain.com-httpd.conf /etc/httpd/conf.d/www.yourdomain.com.conf
RUN mkdir /var/www/www.yourdomain.com; chown sshuser:sshuser /var/www/www.yourdomain.com
RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
EXPOSE 80 443
CMD ["/usr/sbin/init"]
