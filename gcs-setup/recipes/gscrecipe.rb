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

# Doesn't Work it seems like chef don't have this package
# package 'sbt' do
# 	action :install
# end

execute 'sbt-download' do
    command 'curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo'
end

execute 'sbt-install' do
    command 'sudo dnf install sbt'
end

package 'docker' do
	action :install
end