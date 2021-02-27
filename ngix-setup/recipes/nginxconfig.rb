#
# Cookbook:: ngix-setup
# Recipe:: nginxconfig
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#

execute 'allow connection to host' do
        command 'sudo setsebool -P httpd_can_network_connect on'
end

template '/etc/nginx/nginx.conf' do
	source 'nginx.conf.erb'
	action :create
end

execute 'restart nginx' do
	command 'sudo systemctl restart nginx'
end
