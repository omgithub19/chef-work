#
# Cookbook:: first_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'tree' do
end 

service 'httpd' do
	action [:restart]
end
