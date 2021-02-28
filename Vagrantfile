$script = <<-'SCRIPT'
curl https://packages.chef.io/files/stable/chef-workstation/21.1.247/el/7/chef-workstation-21.1.247-1.el7.x86_64.rpm --output chef-workstation-21.1.247-1.el7.x86_64.rpm 
rpm -ivh chef-workstation-21.1.247-1.el7.x86_64.rpm
sudo dnf install -y git
git clone https://github.com/Ticlla/uagrmgscprovision.git cookbooks
cd /home/vagrant/cookbooks
sudo chef-client -z -r "recipe[gcs-setup],recipe[gcs-setup::gscrecipe],recipe[ngix-setup::nginxsetup],recipe[gcs-setup::gcsappsetup],recipe[ngix-setup::nginxconfig]"
SCRIPT

flag = true

Vagrant.configure("2") do |config|
  config.vm.box = "centos/8"
  config.vm.network "forwarded_port", guest: 80, host: 9000 , host_ip: "0.0.0.0"
  config.vm.provider "virtualbox" do |v|
    if flag then
      v.memory = 2048
      v.cpus = 2
      config.vm.provision "shell", inline: $script
      
      # config.vm.synced_folder "./", "/home/vagrant/proyecto-gcs"
      flag = false
    end
  end
end
