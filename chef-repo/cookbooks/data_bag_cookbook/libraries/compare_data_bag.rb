=begin
def systeminfo
	Chef::Log.debug "Looking for data bag"
	nodename = data_bag(user_details)
	Chef::Log.debug "Looking for data bag item"

	nodename = nodename.map do |Item_1|
		nodename = data_bag_item ('user_details', Item_1)
		Chef::Log.info " Data bag Item is Item_info"
		nodename['node'] == node.name ? nodename : nil
	end.compact

	nodename = search(:systeminfo, "id:#{node.name}")
	Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
    nodename	

end
=end

def systeminfo # rubocop:disable MethodLength
 Chef::Log.debug "Looking for systeminfo for node #{node.name}"
 nodename = data_bag('user_details')
 Chef::Log.debug "All nodename: #{nodename.inspect}"
 
 nodename = nodename.map do |item_id|

   nodename = data_bag_item('user_details', item_id)

   Chef::Log.debug "systeminfo #{item_id}: #{nodename}"

   nodename['node'] == node.name ? Chef::Log.info "#{nodename['node']}" : nil

 end.compact

 nodename = search(:user_details, "id:#{node.name}")
 Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
 nodename
end
