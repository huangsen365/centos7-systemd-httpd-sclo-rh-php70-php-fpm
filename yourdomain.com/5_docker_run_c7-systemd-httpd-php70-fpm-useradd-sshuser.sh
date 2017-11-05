current_dir=$(pwd)

docker run -d \
  --privileged \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -v $current_dir/volumes/volume_yourdomain.com/etc/httpd:/etc/httpd \
  -v $current_dir/volumes/volume_yourdomain.com/etc/nginx:/etc/nginx \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/rh/rh-php70:/etc/opt/rh/rh-php70 \
  -v $current_dir/volumes/volume_yourdomain.com/etc/php-fpm.d:/etc/php-fpm.d \
  -v $current_dir/volumes/volume_yourdomain.com/home:/home \
  -v $current_dir/volumes/volume_yourdomain.com/root:/root \
  -v $current_dir/volumes/volume_yourdomain.com/var/log:/var/log \
  -v $current_dir/volumes/volume_yourdomain.com/var/www:/var/www \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt:/var/opt \
  -p 80:80 \
  -p 443:443 \
  --restart always \
  --name c7-systemd-httpd-php70-fpm-useradd-sshuser_yourdomain.com \
  c7-systemd-httpd-php70-fpm-useradd-sshuser
