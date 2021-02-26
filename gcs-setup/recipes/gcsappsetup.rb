#
# Cookbook:: gcs-setup
# Recipe:: gcsappsetup
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#
execute 'cloning repositor' do
	command 'git clone https://github.com/mundacho/proyecto-gcs.git /home/vagrant/projecto-gcs'
end

execute 'moving to project' do
	command 'cd /home/vagrant/projecto-gcs'
end

execute 'compile with sbt' do
	command 'sudo sbt rpm:packageBin'
end

execute 'move rpm installer' do
	command "find gcs-app/ -name '*.noarch.rpm*' -exec mv -t . {} +"
end

execute 'install gcs app' do
	command 'sudo rpm -i gcs-app-2.8.x-1.noarch.rpm'
end

execute 'change app owner' do
	command 'sudo chown -R gcs-app /usr/share/gcs-app/'
end

execute 'change group' do
	command 'sudo chgrp -R gcs-app /usr/share/gcs-app/'
end

execute 'restart app' do 
	command 'sudo systemctl restart gcs-app'
end