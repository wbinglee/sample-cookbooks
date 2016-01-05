# Instance
instance = search("aws_opsworks_instance", "hostname:#{node['fqdn']}").first
instance_id = instance['instance_id']
public_ip = instance['public_ip']
layer_id = instance['layer_ids'].first  #Assume instance is only used by one layer
Chef::Log.info("Instance ID: '#{instance_id}'")
Chef::Log.info("Instance public IP: '#{public_ip}'")
Chef::Log.info("Instance layer id : '#{layer_id}'")

# Layer
layer = search("aws_opsworks_layer", "layer_id:#{layer_id}").first
layer_name = layer['name']
layer_short_name = layer['shortname']
layer_type = layer['type']
Chef::Log.info("Layer name: '#{layer_name}'")
Chef::Log.info("Layer short name: '#{layer_short_name}'")
Chef::Log.info("Layer type: '#{layer_type}'")





