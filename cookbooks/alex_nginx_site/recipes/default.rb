#
# Cookbook:: alex_nginx_site
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'nginx' do
  subscribes :reload, 'file[/usr/share/nginx/html/index.html]', :immediately
end
