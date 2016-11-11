#
# Cookbook Name:: data_bag_cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

systeminfo.each do |nodename|
Chef::Log.info "My data bag info #{nodename['ram']}"
Chef::Log.info "My data bag info #{nodename['Memory']}"
#Chef::Log.info "My data bag info #{nodename['rom']}"
end