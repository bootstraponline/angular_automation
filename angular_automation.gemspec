require_relative 'lib/angular_automation/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 1.9.3'

  spec.name          = 'angular_automation'
  spec.version       = AngularAutomation::VERSION
  spec.date          = AngularAutomation::DATE
  spec.license       = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
  spec.authors       = spec.email = %w(code@bootstraponline.com)
  spec.summary       = spec.description = 'Collection of angular automation gems'
  spec.description   += '.' # avoid identical warning
  spec.homepage      = 'https://github.com/bootstraponline/angular_automation'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = %w(lib)

  # brings in selenium-webdriver, watir-webdriver, webdriver_utils
  spec.add_runtime_dependency 'angular_webdriver', '>= 1.0.6'

  # make sure we're using latest webdriver_utils
  spec.add_runtime_dependency 'webdriver_utils', '>= 1.0.2'

  spec.add_runtime_dependency 'rspec_flake', '>= 0.2.3'
  spec.add_runtime_dependency 'rspec_junit', '>= 3.0.0'
  spec.add_runtime_dependency 'page_object', '>= 1.1.3'
  spec.add_runtime_dependency 'page_object_stubs', '>= 1.0.1'
  spec.add_runtime_dependency 'sauce_ruby', '>= 3.5.11'
  spec.add_runtime_dependency 'trace_files', '>= 1.0.0'
  spec.add_runtime_dependency 'pry', '>= 0.10.1'
  spec.add_runtime_dependency 'rake', '>= 10.4.2'
  spec.add_runtime_dependency 'sauce_connect', '>= 3.6.1'
  spec.add_runtime_dependency 'sauce_platforms', '>= 1.0.1'

  spec.add_development_dependency 'bundler', '>= 1.10.5'
  spec.add_development_dependency 'appium_thor', '>= 1.0.1'
end
