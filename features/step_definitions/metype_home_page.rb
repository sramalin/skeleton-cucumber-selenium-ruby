When("I launch metype") do
  @metype_homepage = @browser.open_page('https://staging.metype.com')
end

Then /^metype page should be loaded$/ do
  sleep 10
  @metype_homepage.verify_page
end
