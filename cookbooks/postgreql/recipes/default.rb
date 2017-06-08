#
# Cookbook:: postgreql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgres-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]	
end
