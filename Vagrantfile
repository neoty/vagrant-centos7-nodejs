# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    ########################################
    # 아래 내용을 시스템에 맞게 변경해주세요. 일반적으로 host_source_synced_folder 만 변경하면 됩니다.
    ########################################
    # 내부망에서 사용하는 아이피 입니다.(충돌이 난다면 임의로 변경해주세요.)
    private_ip = "192.168.33.10"

    # 호스트명
    hostname = "centos-nodejs"
    
    # 사용할 코어
    cpus = 2
    # 사용할 메모리
    memory = 1024

    # Host OS 에서 마운트할 소스의 위치입니다.(소스폴더의 경로를 적어주시면 됩니다.)
    host_source_synced_folder = "."

    # Guest OS 에서 마운트될 소스의 위치 입니다.(특별한 경우가 아니라면 수정하지마세요.)
    guest_source_synced_folder = "/home/source"


    ########################################
    # 아래 내용은 특별히 수정하지 않습니다.
    ########################################
    config.vm.box = "centos/7"
    config.vm.define "vagrant-centos7-nodejs" do |vagrant_centos7_nodejs|
        config.vm.network "private_network", ip: private_ip
        config.vm.hostname = "centos-nodejs"
    end

    config.vm.provider "virtualbox" do |v|
        v.memory = memory
        v.cpus = cpus
    end

    config.vm.synced_folder ".", "/home/vagrant/share", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder host_source_synced_folder, guest_source_synced_folder, :mount_options => ["dmode=777", "fmode=666"]

    # 최초 vagrant up 할시 setup.sh 내용을 읽어들여 실행시킵니다.
    # setup.sh 를 수정할시 vagrant provision 해주세요.
    config.vm.provision :shell, privileged: false, path: 'setup.sh'
end
