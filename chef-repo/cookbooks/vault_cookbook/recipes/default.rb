#
# Cookbook Name:: vault_cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

chef_gem "chef-vault"
require "chef-vault"

vault = ChefVault::Item.load('vault_data_bag', 'user1')
Chef::Log.info("the user name is = #{vault['user']['details']['name']}")