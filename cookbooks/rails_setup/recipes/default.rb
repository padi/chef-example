#
# Cookbook Name:: rails_setup
# Recipe:: default
#
# Copyright 2012, AELOGICA
#
# All rights reserved - Do Not Redistribute
#

gem_package "bundler"

common = {
  :app_name => "foodc",
  :app_root => "/data/foodc"
}

directory common[:app_root] do
  recursive true
end
