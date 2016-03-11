#
# Cookbook Name:: fun1
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'apt-get update' do
end

include_recipe 'fun1::packages'
include_recipe 'fun1::users'
