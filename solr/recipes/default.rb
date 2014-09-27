#
# Cookbook Name:: chef-opsworks-cookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

node.set['solr']['data'] = '/solr/data'
node.set['solr']['home'] = '/solr'
node.set['solr']['env_vars'] = {
	'solr.solr.home' => node['solr']['home'],
	'solr.data.dir' => node['solr']['data']
}
node.set['jetty']['port'] = 8983


include_recipe 'hipsnip-solr'


solrconfig = "#{node['solr']['home']}/conf/solrconfig.xml"
template solrconfig do
  source 'solrconfig.erb'
  mode '755'
  notifies :restart, "service[jetty]"
end

schema = "#{node['solr']['home']}/conf/schema.xml"
template schema do
  source 'schema.erb'
  mode '755'
  notifies :restart, "service[jetty]"
end

directory node['solr']['home'] do
  owner node['jetty']['user']
  group node['jetty']['group']
  mode "755"
  recursive true
  action :create
end
