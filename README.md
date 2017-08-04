# 용도
```
provider is virtual box!
centos7 + nginx + nvm + nodejs lts + mariadb 5.x.x(utf8) + pm2 + yarn + htop 
```

# 설치
```
$ git clone https://github.com/neoty/vagrant-centos7-nodejs
$ cd vagrant-centos7-nodejs
> Vagrantfile 내용을 자신의 환경에 맞게 수정합니다.

$ vagrant plugin install vagrant-vbguest
>위 명령어를 한번 이라도 실행시키신적이 있으면 패스하셔도 됩니다.

$ vagrant up
$ vagrant ssh
```

```
1. 3분 이상 응답이 없으면 Enter 키를 눌러주세요.
2. Linux root, MariaDB root의 초기 비밀번호를 vagrant 입니다.
3. vagrant plugin install vagrant-vbguest 
```
