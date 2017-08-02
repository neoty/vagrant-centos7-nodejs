# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.define "centosNodejs" do |centosNodejs|
        config.vm.network "private_network", ip: "192.168.33.10"
        config.vm.hostname = "centos-nodejs"
    end
    config.vm.synced_folder ".", "/home/vagrant/share", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder "/Volumes/data/004. source/001. neoty", "/home/source", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.provision :shell, privileged: false, path: 'setup.sh'
end
