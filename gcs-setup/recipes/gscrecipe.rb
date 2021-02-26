#
# Cookbook:: gcs-setup
# Recipe:: gscrecipe
#
# Copyright:: 2021, The Authors, All Rights Reserved.

execute 'install java' do
	command 'sudo dnf install -y java-1.8.0-openjdk-devel'
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
    command 'sudo dnf install -y sbt'
end

execute 'rpm-buld-install' do
    command 'sudo dnf install -y rpm-build'
end

package 'docker' do
	action :install
end