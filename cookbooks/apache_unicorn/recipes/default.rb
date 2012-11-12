#
# Cookbook Name:: apache_unicorn
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "unicorn"

apache_config_path = "/etc/httpd/conf/includes/foodc.conf"

template apache_config_path do
  mode 0644
  source "foodc.conf.erb"
  # TODO
  # reload apache after update
  # notifies :reload, "service[apache]"
end