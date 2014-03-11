#
# Cookbook Name:: myusers
# Recipe:: marcy
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'user'

user_account 'marcy' do
  action :create
  ssh_keys  ['ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA9anxVadva544QdbURKYQ8rOL7c5+u7PRUxP/0YG39xQE8Jy59wxWZC0mRy6ChW5rLQ5HoZXcT1qk/s3d7yFUcWZDkSrIclWdNW/oZkxSGqwn7hVdP97zWwkxACRtJEyjCtUDVXRL8sw/QQKArv6+n4JCobZG58rZMv5dNYmf1CrP8WEZxMDJSa86qJI8/1247UtaCBCNWcp4ilU15yy9rmpLTZ1y5/jRn6UHlmyCktE40o2YeP0t+3eVdnFg7BtCgenbuePg1Ezm0is1bQu8jQGPcXHFy2Z7MinXu6EnWSmhCkv7w+R+j7tOLlKJqTJ5m42Q8rJu8MMEQZo9Ax7Dxw== marcy']
end
