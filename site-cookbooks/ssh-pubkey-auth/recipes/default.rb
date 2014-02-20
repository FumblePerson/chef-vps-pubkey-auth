#
# Cookbook Name:: ssh-pubkey-auth
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "sshd" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

execute 'sed -i "s/.*PubkeyAuthentication.*/PubkeyAuthentication yes/g" /etc/ssh/sshd_config' do
  not_if 'cat /etc/ssh/sshd_config | grep -qG "^PubkeyAuthentication yes"'
  notifies :restart, 'service[sshd]'
end

execute 'sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config' do
  not_if 'cat /etc/ssh/sshd_config | grep -qG "^PasswordAuthentication no"'
  notifies :restart, 'service[sshd]'
end

execute 'sed -i "s/.*PermitRootLogin*/PermitRootLogin no/g" /etc/ssh/sshd_config' do
  not_if 'cat /etc/ssh/sshd_config | grep -qG "^PermitRootLogin no"'
  notifies :restart, 'service[sshd]'
end