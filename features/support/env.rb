require 'selenium-webdriver'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'site_prism'


Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end


Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
  config.app_host = 'https://www.livelo.com.br/'
end