FROM c7-systemd-httpd-nginx-php7x-fpm
RUN systemctl enable httpd.service; systemctl enable rh-php71-php-fpm
EXPOSE 80 443
CMD ["/usr/sbin/init"]
