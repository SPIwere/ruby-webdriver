require_relative "../support/hooks"
Then(/^I validate that data visible on the page$/) do
assert_equal(true, $driver.find_element(:id, "location").displayed?)
end

When(/^I change size of the window$/) do
$driver.manage.window.resize_to(500, 500)
end

Then(/^I validate that data not visible on the page$/) do
  assert_equal(false, $driver.find_element(:id, "location").displayed?)
end