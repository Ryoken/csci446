# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'MST'
  config.gem "authlogic"
  config.gem "haml"
  config.gem "paperclip"
  config.gem "will_paginate"
  config.gem "ambethia-recaptcha", :lib => "recaptcha/rails", :source => "http://gems.github.com"
  config.gem "declarative_authorization", :source => "http://gemscutter.org"

  ENV['RECAPTCHA_PUBLIC_KEY']  = '6Lfl_MESAAAAAIpFf1jmwuM-kG8ftgo4d2tAtq2D'
  ENV['RECAPTCHA_PRIVATE_KEY'] = '6Lfl_MESAAAAADUYifVd_1Rpc2C1OIxOR-WhTkzG'

end