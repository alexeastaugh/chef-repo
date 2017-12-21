#
# Cookbook:: alex_users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

users_manage 'sysadmin' do
    group_id 3000
    action [:create]
    data_bag 'users'
end

sudo 'sysadmin' do
    group "%sysadmin"
    nopasswd    true
end
