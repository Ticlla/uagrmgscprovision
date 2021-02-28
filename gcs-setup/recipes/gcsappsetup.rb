#
# Cookbook:: gcs-setup
# Recipe:: gcsappsetup
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#
execute 'cloning repositor' do
	command 'git clone https://github.com/Ticlla/proyecto-gcs.git /home/vagrant/proyecto-gcs'
end

execute 'moving to project and packaging the  app' do
	command 'cd /home/vagrant/proyecto-gcs ; sudo sbt rpm:packageBin'
end

execute 'move rpm installer' do
	command "sudo find /home/vagrant/projecto-gcs/gcs-app/ -name '*.noarch.rpm*' -exec mv -t /home/vagrant/ {} +"
end

execute 'install gcs app' do
	command 'sudo rpm -i /home/vagrant/gcs-app-2.8.x-1.noarch.rpm'
end

execute 'change app owner' do
	command 'sudo chown -R gcs-app /usr/share/gcs-app/'
end

execute 'change group' do
	command 'sudo chgrp -R gcs-app /usr/share/gcs-app/'
end

execute 'restart gcs-app' do 
	command 'sudo systemctl restart gcs-app'
end

execute 'restart nginx' do 
	command 'sudo systemctl restart nginx'
end
