#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

=begin
chef_gem 'mixlib-shellout'
Chef::Log.info("before the if condition")
if %w{ubuntu debian}.include?(node['platform'])
Chef::Log.info("i am in platform #{node['platform']}")
Helper.update_ubuntu

elsif %w{oracle rhel centos redhat}.include?(node['platform'])
Chef::Log.info("i am in platform #{node['platform']}")
Helper.update_rhel_or_oracle
else
Chef::Log.info("i am in different platform")
end
=end
directory '/tmp/ppriyasr' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/tmp/ppriyasr/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
    variables({
     :sudoers_groups => node[:attributes][:sudo][:groups],
     :sudoers_users => node[:attributes][:sudo][:users],
     :passwordless  => node[:attributes][:passwords]
  })
end




Chef::Log.info ("My first Recipe")
