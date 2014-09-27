#
# Cookbook Name:: chef-opsworks-cookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

node.set['solr']['data'] = '/solr'


include_recipe 'hipsnip-solr'
