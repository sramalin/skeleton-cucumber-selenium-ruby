class MetypeHomePage
  def initialize(driver)
    @driver = driver
  end
  def verify_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'home-page-container') }
  end
end
