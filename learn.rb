package 'httpd' do 
end 

service 'httpd' do
	action [:enable , :start]
end

file '/var/www/html/index.html' do 
	content 'hello word from shree  Om learing Chef'
	mode 0755
	owner 'root'
	group 'apache'
end 

#file '/etc/motd' do
	#content 'welcome to my chef'
#end 

execute 'command-test' do
	command 'echo blah >> /etc/motd'
	only_if { File.exists?('/etc/motd') } 
end


