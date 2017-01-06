#
# Cookbook Name:: demo
# Recipe:: default
#
# Copyright 2014, Marek Hulan
#
# All rights reserved - Do Not Redistribute
#
case node["platform"]
when 'debian', 'ubuntu'
  package 'toilet'
else
  package 'figlet'
end

cookbook_file "/usr/share/figlet/standard.flf" do
  source "standard.flf"
  mode "0644"
end

template '/etc/profile.d/toilet.sh'
template '/etc/motd'

# enc demo
file '/root/enc_demo.txt' do
  content node['foreman_interfaces'].inspect
  mode '0644'
end
