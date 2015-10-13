execute "yum update" do
  command "sudo yum -y update"
end

node['packages'].length.times do |i|
  package node['packages'][i]
  user "root"
end

node['services']['on'].length.times do |i|
  service node['services']['on'][i] do
    action [:start, :enable]
    user "root"
  end
end

node['services']['off'].length.times do |i|
  service node['services']['off'][i] do
    action [:stop, :disable]
    user "root"
  end
end
