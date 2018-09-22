require_relative "../support/hooks"

Then(/^I locate mouth on the iFrame element$/) do
  $driver.find_element(:xpath, "//iframe[@name='additionalInfo']").click
  sleep(10)
end

And(/^I see "([^"]*)" message$/) do |value|
  assert_equal(value, $driver.find_element(:id,"iframeHoverMessage").text)
end

When(/^I put additional Name and Phone$/) do
  $driver.switch_to.frame("additionalInfo")
  $driver.find_element(:id, "contactPersonName").send_keys "ttyy"
  $driver.find_element(:id, "contactPersonPhone").send_keys "ttyywww"
  #$driver.switch_to.default_content
  sleep(5)
end