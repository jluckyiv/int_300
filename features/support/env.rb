begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/webkit'
require 'rspec'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :webkit
  config.javascript_driver = :webkit
  config.app_host = 'http://localhost:4000' # change url
end

