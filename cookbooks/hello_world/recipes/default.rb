#
# Cookbook:: hello_world
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

template "#{ENV['HOME']}/hello-world.txt" do
  source 'hello-world.txt.erb'
  mode '0644'
end
