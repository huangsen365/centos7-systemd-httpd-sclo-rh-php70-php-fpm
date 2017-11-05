FROM c7-systemd-httpd-nginx-php70-fpm
RUN systemctl enable httpd.service; systemctl enable rh-php70-php-fpm
EXPOSE 80 443
CMD ["/usr/sbin/init"]
