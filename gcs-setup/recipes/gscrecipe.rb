#
# Cookbook:: gcs-setup
# Recipe:: gscrecipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'java' do
	action :install
end

package 'scala' do
	action :install
end

package 'sbt' do
	action :install
end

package 'docker' do
	action :install
end