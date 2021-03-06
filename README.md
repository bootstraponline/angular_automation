# Angular Automation [![Gem Version](https://badge.fury.io/rb/angular_automation.svg)](https://rubygems.org/gems/angular_automation) [![Dependency Status](https://gemnasium.com/bootstraponline/angular_automation.svg)](https://gemnasium.com/bootstraponline/angular_automation)

Angular automation is a collection of gems for webdriver automation.
The angular_automation gem only refers to other gems, it doesn't provide
any features by itself.


Gem | Description
--- | ---
[**rspec_flake**](https://github.com/bootstraponline/rspec_flake) | Measure test flakiness and performance.
[**rspec_junit**](https://github.com/bootstraponline/rspec_junit) | JUnit xml reporter that works with rspec_flake
[**angular_webdriver**](https://github.com/bootstraponline/angular_webdriver) | Protractor client side scripts integrated with Ruby webdriver
[**page_object_stubs**](https://github.com/bootstraponline/page_object_stubs) | Page object stub generator for RubyMine
[**sauce_ruby**](https://github.com/bootstraponline/sauce_ruby) | Sauce labs gem with bug fixes
[**trace_files**](https://github.com/bootstraponline/trace_files)  | Tracing gem used for debugging
[**pry**](https://github.com/pry/pry) | Pry is used for debugging
[**rake**](https://github.com/ruby/rake) | Rake is used for sauce tasks and the stub generation task
[**page_object**](https://github.com/bootstraponline/page_object) | Fork of the page-object gem with bug fixes and code coverage
[**webdriver_utils**](https://github.com/bootstraponline/webdriver_utils) | Util methods for webdriver such as waiting and page object helpers
[**sauce-connect**](https://github.com/saucelabs/sauce_ruby/tree/master/gems/sauce-connect) | Sauce connect is used for running locally (outside of jenkins)
[**sauce_platforms**](https://github.com/bootstraponline/sauce_platforms) | Dependency free DSL for specifying [Sauce Labs platforms](https://saucelabs.com/platforms/)
[**sauce_connect_ruby**](https://github.com/bootstraponline/sauce_connect_ruby) | Ruby example that uses all the angular_automation gems
[**sauce_overage**](https://github.com/bootstraponline/sauce_overage) | Check available minutes before test execution to avoid overage charges

Other gems used:

- [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver) - upstream selenium webdriver gem
- [watir-webdriver](https://github.com/watir/watir-webdriver) - watir framework built on top of webdriver
- [sauce_rspec](https://github.com/bootstraponline/sauce_rspec) - sauce gem replacement
- [rspec-retry](https://github.com/NoRedInk/rspec-retry) - used to retry failed jobs
- [test-queue-split](https://rubygems.org/gems/test-queue-split) - used for per test parallel execution on Sauce

Note that the Sauce Connect gem should be avoided at all cost due to
bugs such as [crashing](https://github.com/saucelabs/sauce_ruby/issues/317),
[infinite looping](https://github.com/saucelabs/sauce_ruby/issues/316), and
[creating multiple processes](https://github.com/saucelabs/sauce_ruby/issues/318).
The recommended way is to use the Sauce Jenkins plugin to fully handle
the SC lifecycle and avoid the broken Ruby sauce connect code.


The rspec_junit gem depends on rspec.

#### Use

- `require 'angular_automation'`

The general use case is:

- Tests use the page_object gem with stubs & sauce labs integration
- Setup Jenkins with Sauce OnDemand plugin to use Sauce Connect & enable reporting
  - make sure to check [`Launch Sauce Connect on Slave`](https://wiki.cloudbees.com/bin/view/DEV/Sauce%20OnDemand%20Service)
  - `Sauce OnDemand support` must be checked
  - Export `SAUCE_USERNAME` and `SAUCE_ACCESS_KEY` in execute shell
  - `rake sauce:spec` to run the tests in parallel
  - Use `rspec_junit` for JUnit xml output
  - Publish JUnit results in post build
  - `Run Sauce Labs Test Publisher` in post build 
- An example of the setup is [available in this repo](https://github.com/bootstraponline/sauce_connect_ruby)
