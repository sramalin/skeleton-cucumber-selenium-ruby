require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="./lib/chromedriver"
driver = Selenium::WebDriver.for :chrome

require 'cucumber'
require 'require_all'

require_all 'lib'

Before do |scenario|
    @browser = Browser.new(ENV['DRIVER'])
    @browser.delete_cookies
end

After do |scenario|
    @browser.driver.quit
end
