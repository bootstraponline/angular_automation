require 'rubygems'

require 'rspec_flake'
require 'rspec_junit'
require 'page_object'
require 'angular_webdriver' # requires selenium-webdriver and watir-webdriver
require 'page_object_stubs'
require 'trace_files'
require 'pry'
require 'sauce_platforms'
require 'webdriver_utils'
require 'rspec'

# sauce_ruby is **not** required by default so that angular_automation
# can easily work with other cloud providers. also the sauce gem
# inserts rspec hooks that are sauce specific.
#
# require 'sauce'


# internal
require_relative 'angular_automation/version'
