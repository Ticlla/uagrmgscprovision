#
# Cookbook:: gcs-app
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.


package 'tree' do
	action :install
end


package 'git' do
	action :install
end

package 'vim-enhanced' do
        action :install
end

package 'nano' do
        action :install
end

package 'which' do
        action :install
end




