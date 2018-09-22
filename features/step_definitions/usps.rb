require_relative "../support/hooks"

Given(/^I open "([^"]*)" page$/) do |page|
  $driver.get("https://www.#{page}.com/") if page
end

Then(/^I go to Lookup ZIP page by address$/) do
  $driver.action.move_to($driver.find_element(:id, "mail-ship-width")).perform
  $driver.find_element(:xpath, "//*[@class='tool-zip']//*[@role='menuitem']").click
end

Then(/^I fill up data street "([^"]*)" city "([^"]*)" state "([^"]*)"$/) do |street, city, state|
  $driver.find_element(:id, "tAddress").send_key street
  $driver.find_element(:id, "tCity").send_key city
  $driver.find_element(:xpath, "//select[@id='tState']/*[@value='#{state}']").click

end

Then(/^I go to find by address page$/) do
  $driver.find_element(:xpath, "//a[@data-location='byaddress'][@class='btn-primary zip-code-home']").click
end

And(/^I click on the Find button$/) do
  $driver.find_element(:id, "zip-by-address").click
end

Then(/^I validate "([^"]*)" zip code exists in the result$/) do |zip_code|
  sleep 3
  result = $driver.find_elements(:xpath, "//*[contains(text(),'#{zip_code}')]")
  assert_equal(true, result.any?, "founded #{result.length} results")
  puts "founded #{result.length} results"
end

Then(/^Go to Calculate Price page$/) do
  $driver.action.move_to($driver.find_element(:id, "mail-ship-width")).perform
  $driver.find_element(:xpath, "//*[@class='tool-calc']//*[@role='menuitem']").click
end

And(/^I select "([^"]*)" with "([^"]*)" shape$/) do |country, type|
  $driver.find_element(:xpath, "//select[@id='CountryID']/*[contains(text(), '#{country}')]").click
  $driver.find_element(:xpath, "//*[@value='#{type}']").click
  sleep 1
end

And(/^I define "([^"]*)" quantity$/) do |quanity|
  $driver.find_element(:id, "quantity-0").send_key quanity
end

Then(/^I calculate the price and validate cost is "([^"]*)"$/) do |cost|
  $driver.find_element(:xpath, "//*[@value='Calculate']").click
  assert_equal(cost, $driver.find_element(:id, "total").text)
end