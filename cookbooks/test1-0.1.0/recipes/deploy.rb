#
# Cookbook Name:: test1
# Recipe:: deploy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#Sets up the group and users
group 'software-team' do
  action :create
end

user 'john' do
  action :create
  password '123456'
  group 'software-team'
  home '/home/john'
  shell '/bin/bash'
end

user 'jill' do
  action :create
  password '123456'
  group 'software-team'
  home '/home/jill'
  shell '/bin/bash'
end

#Adds SSH keys for Users
directory '/home/john/.ssh/' do
  recursive true
end
directory '/home/jill/.ssh/' do
  recursive true
end
bash 'create_ssh' do
  code <<-EOH
    ssh-keygen -t rsa -q -f /home/john/.ssh/id_rsa -N ""
  EOH
end
bash 'create_ssh' do
  code <<-EOH
    ssh-keygen -t rsa -q -f /home/jill/.ssh/id_rsa -N ""
  EOH
end
#Installs the Apache and PHP packages
package 'apache2' do
  action :install
end

package 'php5' do
  action :install
end

#Enables the services on boot
service 'apache2' do
  action [ :start, :enable ]
end

#service 'php5' do
#  action [ :start, :enable ]
#end
#Creates the PHP file
file '/var/www/html/info.php' do
  content '<?php phpinfo()?>'
end
