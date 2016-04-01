template "/tmp/cwlogs.cfg" do
  cookbook "logschef12"
  source "cwlogs.cfg.erb"
  owner "root"
  group "root"
  mode 0644
  variables(
    :instance => search("aws_opsworks_instance").first,
    :stack => search("aws_opsworks_stack").first
  )
end
