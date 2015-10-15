execute "yum update" do
  command "sudo yum -y update"
end

node['packages'].length.times do |i|
  package node['packages'][i]
  user "root"
end
