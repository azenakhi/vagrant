Vagrant.configure(2) do |config|

  config.vm.network "private_network", type: "dhcp"
  
  config.vm.synced_folder 'provisioning', '/vagrant/provisioning', mount_options: ["fmode=666"]
  
  config.vm.provision "shell", inline: "echo Success"
  
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos65.box"
	vm1.vm.hostname = "vm1"       
	vm1.vm.provision :shell, :path => "install.sh"
  end
  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "centos65.box"
	vm2.vm.hostname = "vm2"       
	vm2.vm.provision :shell, :path => "install.sh"
  end
  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "centos65.box"
	vm3.vm.hostname = "vm3"       
	vm3.vm.provision :shell, :path => "install.sh"
  end
  config.vm.define "vm4" do |vm4|
    vm4.vm.box = "centos65.box"
	vm4.vm.hostname = "vm4"       
	vm4.vm.provision :shell, :path => "install.sh"
  end
end
