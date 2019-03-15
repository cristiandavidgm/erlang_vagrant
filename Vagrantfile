
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision "shell", path: "provision.sh", privileged: false
  config.ssh.forward_agent = true
  config.vm.synced_folder "/Users/david/dev", "/home/vagrant/dev/"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
end
