#
# Cookbook:: ngix-setup
# Recipe:: nginxconfig
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#
#


# copy nginx_conf to /etc/nginx/nginx.config
#
template '/etc/nginx/nginx.conf' do
	source 'ngix.config.erb'
	cookbook 'ngix-setup'
	action :create
end

#
#
# sudo setsebool -P httpd_can_network_connect on
execute 'allow connection to host' do
        command 'sudo setsebool -P httpd_can_network_connect on'
end



# systemctl restart nginx
#
execute 'restart nginx' do
	command 'sudo systemctl restart nginx'
end

#
#
#
#



