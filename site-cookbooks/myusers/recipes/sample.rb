#
# Cookbook Name:: myusers
# Recipe:: sample
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'users'

user_name = "sample".force_encoding('UTF-8')

users_manage user_name do
  group_id 2300
  action [ :remove, :create ]
end

execute 'sed -i "s/¥s*#{user_name}¥s+.+=.+/#{user_name} ALL=(ALL) ALL/g" /etc/sudoers' do
  only_if 'cat /etc/sudoers | grep -qG "^¥s*#{user_name}¥s+.+=.+"'
end