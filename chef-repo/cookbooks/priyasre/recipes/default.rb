#
# Cookbook Name:: priyasre
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info ("My first Recipe")
directory '/tmp/folder' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end