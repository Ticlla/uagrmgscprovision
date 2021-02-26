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

execute 'install gcs app' do
	command 'sudo rpm -i /home/vagrant/projecto-gcs/gcc-app/target/rpm/RPMS/noarch/gcs-app-2.8.x-1.noarch.rpm'
end
