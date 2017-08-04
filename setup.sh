echo "Provision virtual machine..."

echo "Updating Packages"
 sudo yum update -y > /dev/null 2>&1

echo "nvm install"
 curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

echo "source bashrc"
 source .bashrc

echo "nodejs lts install"
 nvm install lts/*

echo "nginx repo install"
 sudo cp /home/vagrant/share/resources/nginx.repo /etc/yum.repos.d/nginx.repo

echo "nginx install"
 sudo yum install nginx -y

echo "nginx regist systemctl"
 sudo systemctl enable nginx

echo "pm2 install"
 npm install pm2 -g

echo "mariadb 5 install"
 sudo yum install mariadb-server -y
 sudo systemctl enable mariadb

echo "mysql copy my.cnf"
 sudo cp -r /home/vagrant/share/resources/my.cnf /etc/my.cnf 

echo "mariadb restart"
 sudo service mariadb restart

echo "mariadb mysql_secure_installation"
mysql -u root <<-EOF
UPDATE mysql.user SET Password=PASSWORD('vagrant') WHERE User='root';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
EOF

echo "wget install"
 sudo yum install wget -y

echo "yarn install"
 npm install yarn -g

echo "epel install"
 sudo rpm -Uvh /home/vagrant/share/resources/epel-release-7-10.noarch.rpm

echo "htop"
 sudo yum install htop -y

echo "selinux off"
 sudo sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
 sudo setenforce 0
 
echo "net-tools install"
 sudo yum install net-tools

echo "vagrant ssh 접속후 sudo mysql_secure_installation 해주세요!"
