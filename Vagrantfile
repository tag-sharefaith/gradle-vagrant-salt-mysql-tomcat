Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  
  # MySQL
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  # Tomcat
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  # Tomcat remote debugging
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.synced_folder "vagrant/srv/formulas/", "/srv/formulas/"
  config.vm.synced_folder "vagrant/srv/pillar/", "/srv/pillar/"
  config.vm.synced_folder "vagrant/srv/salt/", "/srv/salt/"
  
  config.vm.provision :salt do |salt|
    salt.minion_config = "vagrant/etc/salt/minion"
    salt.verbose = true
    salt.run_highstate = true
  end
  
  config.vm.synced_folder "vagrant/home/vagrant/.config/", "/home/vagrant/.config/"
  
end
