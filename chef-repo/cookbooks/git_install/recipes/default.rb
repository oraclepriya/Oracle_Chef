#
# Cookbook Name:: git_install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
 remote_file "C:/#{['git_install']['git_uninstall_version']}" do
 	source 'https://github.com/git-for-windows/git/releases/download/v2.10.2.windows.1/Git-2.10.2-64-bit.exe'
 	action :create
 	not_if { File.exists?('C:\Git-2.10.2-64-bit.exe') }
 end

execute 'install_git_priya' do 

	command "C:/{#{['git_install']['git_uninstall_version']}} /SILENT"

end

