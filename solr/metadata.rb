name             'chef-opsworks-solr'
maintainer       'Max Penson'
maintainer_email 'max.penson@gmail.com'
license          'All rights reserved'
description      'Installs/Configures chef-opsworks-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
supports 'ubuntu'
depends 'hipsnip-solr', '~> 0.5.0'
