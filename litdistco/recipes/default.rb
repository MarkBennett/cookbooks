
#
# Cookbook Name:: litdistco
# Recipe:: default
# Author:: Mark Bennett <mark@burmis.ca>
#
# Copyright 2011-2011, Burmis Studio, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Create the database
include_recipe "mysql::server"

mysql_database "create litdistco_sales database" do
  host "localhost"
  username "root"
  password node[:mysql][:server_root_password]
  database "litdistco_sales"
  action :create_db
end

# Configure redis
include_recipe "redis::source"

# Include git for vlad deployments
include_recipe "git"

# How do I add github.com to trusted keys?
