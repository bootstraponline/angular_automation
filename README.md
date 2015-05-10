# Angular Automation

Angular automation is a collection of gems for webdriver automation.
The angular_automation gem only refers to other gems, it doesn't provide
any features by itself.


Gem | Description
 -- | --
**rspec_flake**         | measure test flakiness and performance.
**rspec_junit**         | junit xml reporter that works with rspec_flake
**angular_page_object** | page object gem with bug fixes and angular helpers
**page_object_stubs**   | page object stub generator for RubyMine
**sauce_ruby**          | sauce labs gem with bug fixes
**trace_files**         | tracing gem used for debugging


The angular_page_object gem depends on:

- [angular_webdriver](https://rubygems.org/gems/angular_webdriver) - Protractor client side scripts integrated with Ruby webdriver
- [page-object](https://rubygems.org/gems/page-object) - page object gem
- [selenium-webdriver](https://rubygems.org/gems/selenium-webdriver) - upstream selenium webdriver gem
- [watir-webdriver](https://rubygems.org/gems/watir-webdriver) - watir framework built on top of webdriver

#### Use

- `require 'angular_automation'`

The general use case is:

- Tests use the angular_page_object gem with stubs & sauce labs integration
- Setup Jenkins with Sauce OnDemand plugin to use Sauce Connect & enable reporting
  - make sure to check [`Launch Sauce Connect on Slave`](https://wiki.cloudbees.com/bin/view/DEV/Sauce%20OnDemand%20Service)
  - `Sauce OnDemand support` must be checked
  - Export `SAUCE_USERNAME` and `SAUCE_ACCESS_KEY` in execute shell
  - `rake sauce:spec` to run the tests in parallel
  - Use `rspec_junit` for JUnit xml output
  - Publish JUnit results in post build
  - `Run Sauce Labs Test Publisher` in post build 
- An example of the setup is [available in this repo](https://github.com/bootstraponline/sauce_connect_ruby)