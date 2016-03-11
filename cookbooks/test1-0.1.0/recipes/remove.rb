#
# Cookbook Name:: test1
# Recipe:: remove
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

file '/etc/chef/validation.pem' do
  action :delete
end
