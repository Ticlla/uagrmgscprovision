#
# Cookbook:: ngix-setup
# Recipe:: nginxsetup
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#

package 'nginx' do
	action :install
end


execute 'enable nginx' do 
	command 'sudo systemctl enable nginx'
end

execute 'start nginx' do
        command 'sudo systemctl start nginx'
end


execute 'nginx status' do
        command 'sudo systemctl status nginx'
end


#execute 'allow ngix http' do
#        command 'sudo firewall-cmd --add-service={http,https} --permanent'
#end

#execute 'allow nginx firewall' do
#        command 'sudo firewall-cmd --reload'
#end


