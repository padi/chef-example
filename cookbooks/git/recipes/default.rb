#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2012, AELOGICA
#
# All rights reserved - Do Not Redistribute
#

case node[:platform]
when "debian", "ubuntu"
  package "git-core"
when "centos","redhat","scientific","fedora"
  case node[:platform_version].to_i
  when 5
    include_recipe "yum::epel"
  end
  package "git" do
    options "--disableexcludes=main"
  end
else
  package "git"
end