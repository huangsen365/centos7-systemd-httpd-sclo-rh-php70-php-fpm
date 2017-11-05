docker run --privileged -d \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v ./volumes/volume_yourdomain.com/etc/httpd:/etc/httpd \
-v ./volumes/volume_yourdomain.com/etc/nginx:/etc/nginx \
-v ./volumes/volume_yourdomain.com/etc/opt/rh/rh-php70:/etc/opt/rh/rh-php70 \
-v ./volumes/volume_yourdomain.com/etc/php-fpm.d:/etc/php-fpm.d \
-v ./volumes/volume_yourdomain.com/home:/home \
-v ./volumes/volume_yourdomain.com/root:/root \
-v ./volumes/volume_yourdomain.com/var/log:/var/log \
-v ./volumes/volume_yourdomain.com/var/www:/var/www \
--name=c7-systemd-httpd-php70-fpm-useradd-sshuser_yourdomain.com \
-p 80:80 \
-p 443:443 \
--restart=always \
c7-systemd-httpd-php70-fpm-useradd-sshuser