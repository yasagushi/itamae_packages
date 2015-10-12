node['packages'].length.times do |i|
  package node['packages'][i]
end

node['services']['on'].length.times do |i|
  service node['services']['on'][i] do
    action [:start, :enable]
  end
end

node['services']['off'].length.times do |i|
  service node['services']['off'][i] do
    action [:stop, :disable]
  end
end
