sed -i 's/User\ apache/User\ sshuser/g' /etc/httpd/conf/httpd_test.conf
echo "User apache replaced to User sshuser"
sed -i 's/Group\ apache/Group\ sshuser/g' /etc/httpd/conf/httpd_test.conf
echo "Group apache replaced to Group sshuser"
