** Vagrant package

vagrant up vm1
vagrant ssh vm1
add something (ex: update os, software)
rm /etc/udev/rules.d/70-persistent-net.rules
vagrant halt
vagrant package vm1
vagrant box add new-box-name package.box
rm -rf package.box
vagrant destroy vm1
vagrant init
modify Vagrantfile for using the new-box-name
vagrant up
