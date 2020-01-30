 
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v1|
      v1.memory = 1024
      v1.cpus = 1
  end
   config.vm.define "master" do |master|
    master.vm.provision "shell", inline: "git clone https://github.com/cordiaz/sp1-cilsy.git"
    master.vm.provision "shell", inline: "chmod 644 /home/vagrant/sp1-cilsy/startup.sh"
    master.vm.provision "shell", inline: "/bin/sh /home/vagrant/sp1-cilsy/startup.sh"
    master.vm.network "public_network", bridge: "wlp3s0",
       use_dhcp_assigned_default_route: true
    master.vm.box = "ubuntu/bionic64"
    master.vm.network "private_network",ip: "192.168.100.212"
   end
end
