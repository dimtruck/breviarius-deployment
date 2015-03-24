VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty-server-cloudimg-amd64"
 
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.ssh.forward_agent = true
  config.vm.provision "file", source: "vagrant_data/ansible.cfg", destination: "/home/vagrant/.ansible.cfg"
  config.vm.provision "file", source: "vagrant_data/profile", destination: "/home/vagrant/.profile"
  config.vm.provision :shell, path: "vagrant_data/bootstrap.sh"
end
