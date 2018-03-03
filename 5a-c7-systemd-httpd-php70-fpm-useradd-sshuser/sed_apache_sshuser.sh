sed -i -e 's/User\ apache/User\ sshuser/g' -e 's/Group\ apache/Group\ sshuser/g' /etc/httpd/conf/httpd.conf
echo "User/Group apache replaced to User/group sshuser"
