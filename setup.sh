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
echo "wget install"
 sudo yum install wget -y
echo "yarn install"
 npm install yarn -g
echo "epel install"
 sudo rpm -ivh /home/vagrant/share/resources/epel-release-7-10.noarch.rpm
echo "htop"
 sudo yum install htop -y
echo "vagrant ssh 접속후 sudo mysql_secure_installation 해주세요!"
