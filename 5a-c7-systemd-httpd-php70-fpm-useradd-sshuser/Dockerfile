FROM c7-systemd-httpd-php70-fpm
RUN useradd sshuser
RUN echo "export HISTSIZE=10000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
EXPOSE 80 443
CMD ["/usr/sbin/init"]
