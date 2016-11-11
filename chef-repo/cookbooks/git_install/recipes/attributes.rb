#user level attributes
Chef::Log.info(node['git_install']['git_installer'])
Chef::Log.info(node['git_install']['git_uninstaller'])

#Node level attributes
Chef::Log.info("my kernel name #{node['kernel']['name']}")

Chef::Log.info("my ip address is #{node['ipaddress']}")
Chef::Log.info("my os is #{node['os']}")
Chef::Log.info("my os_version #{node['os_version']}")