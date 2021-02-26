$script = <<-'SCRIPT'
curl https://packages.chef.io/files/stable/chef-workstation/21.1.247/el/7/chef-workstation-21.1.247-1.el7.x86_64.rpm --output chef-workstation-21.1.247-1.el7.x86_64.rpm 
rpm -ivh chef-workstation-21.1.247-1.el7.x86_64.rpm
sudo dnf install -y git
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    config.vm.provision "shell", inline: $script
    config.vm.network "forwarded_port", guest: 9000, host: 9000
    # config.vm.synced_folder "./", "/home/vagrant/proyecto-gcs"
  end
end
