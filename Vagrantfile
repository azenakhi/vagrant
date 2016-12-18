labvm1_disk0 = '/Users/azenakhi/downloads/vagrant/labvm1_disk0.vdi'
labvm1_disk1 = '/Users/azenakhi/downloads/vagrant/labvm1_disk1.vdi'
labvm1_disk2 = '/Users/azenakhi/downloads/vagrant/labvm1_disk2.vdi'

Vagrant.configure(2) do |config|

    config.vm.box = "bento/centos-7.2"

    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "1"]
    end

    config.vm.define "labvm1" do |labvm1|

        labvm1.vm.hostname = "labvm1"

        labvm1.vm.provider "virtualbox" do |vb|
           vb.customize ["createhd",  "--filename", labvm1_disk0, "--size", 2 * 1024]
           vb.customize ["createhd",  "--filename", labvm1_disk1, "--size", 10 * 1024]
           vb.customize ["createhd",  "--filename", labvm1_disk2, "--size", 10 * 1024]
           vb.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "1", "--type", "hdd", "--medium", labvm1_disk0]
           vb.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "2", "--type", "hdd", "--medium", labvm1_disk1]
           vb.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "3", "--type", "hdd", "--medium", labvm1_disk2]
       end
    end
end
