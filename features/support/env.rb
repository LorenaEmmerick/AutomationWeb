require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

@browser = ENV["BROWSER"]

case @browser
when "chrome"
  @driver = :selenium_chrome
when "firefox"
  @driver = :selenium
when "chrome_headless"
  @driver = :selenium_chrome_headless
when "firefox_headless"
  @driver = :selenium_headless
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "http://automationpractice.com/index.php/"
  config.default_max_wait_time = 40
end
