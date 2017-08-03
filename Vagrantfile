# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    
    private_ip = "192.168.33.10"
    hostname = "centos-nodejs"
    cpus = 2
    memory = 1024
    host_source_synced_folder = "/Volumes/data/004. source/001. neoty"
    guest_source_synced_folder = "/home/source"

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
