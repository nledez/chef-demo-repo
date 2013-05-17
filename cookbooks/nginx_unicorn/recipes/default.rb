#
# Cookbook Name:: nginx_unicorn
# Recipe:: default
#
# Copyright 2013, Ledez Incorporated
#
# All rights reserved - Do Not Redistribute
#

[ "nginx", "monit" ].each do |p|
  package p do
    action :install
  end
end

[ "nginx", "monit" ].each do |s|
  service s do
    action [:start, :enable]
  end

  cookbook_file "/etc/monit/monitrc" do
    source "monitrc"
    mode '0440'
    owner 'root'
    group 'root'
  end
end
