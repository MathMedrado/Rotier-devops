# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"
  #config.vm.network "forwarded_port", host_ip: "127.0.0.1"
  config.vm.network "public_network"
  Vagrant::Config.run do |config|
    # Redireciona a porta 80 do guest para a porta 4567 do host
    config.vm.forward_port 9092, 9092
    config.vm.forward_port 3000, 3000
    config.vm.forward_port 9090, 9090
    config.vm.forward_port 8080, 8080
  end

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", inline: "/bin/bash  /vagrant/setup.sh" , privileged: true
end
