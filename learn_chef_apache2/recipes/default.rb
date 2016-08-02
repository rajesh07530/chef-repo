#
# Cookbook Name:: learn_chef_apache2
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

apt_update 'update the local repo'  do
frequency 1_0
action :periodic
end

package 'apache2'
service 'apache2' do
action [:enable, :start]
end

template '/var/www/html/index.html' do
source 'index.html.erb'
end

