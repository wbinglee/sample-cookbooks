template "/tmp/cwlogs.cfg" do
  cookbook "logschef12"
  source "cwlogs.cfg.erb"
  owner "root"
  group "root"
  mode 0644
end
