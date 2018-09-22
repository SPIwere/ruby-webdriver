#test data
NAME='John'
USERNAME='Paul'
PASSWORD='jdisi(8sdjksIWu'
EMAIL='spi@gmail.com'


Given(/^I open new page$/) do
  $driver.get "http://skryabin.com/webdriver/html/sample.html"

end

When(/^I land on the "([^"]*)"$/) do |title|
  assert_equal($driver.title, title)
end

Then(/^I put all data to the required fields$/) do
  $driver.find_element(:name, "name").send_keys NAME
  $driver.find_element(:name, "username").send_keys USERNAME
  $driver.find_element(:name, "password").send_keys PASSWORD
  $driver.find_element(:name, "confirmPassword").send_keys PASSWORD
  $driver.find_element(:name, "email").send_keys EMAIL
  #$driver.find_element(:xpath,"//label[@class='required']/..//input[@name='#{value}']").send_keys 'Hi'
end

Then(/^I select Required check box$/) do
  $driver.find_element(:name, "agreedToPrivacyPolicy").click
end

Then(/^I click on the "([^"]*)" button$/) do |value|
  $driver.find_element(:id, "formSubmit").click
  sleep(3)
end

And(/^I validate that data on the page is correct$/) do
  assert_equal("[entered]", $driver.find_element(:name, "password").text)
  assert_equal(EMAIL, $driver.find_element(:name, "email").text)
  assert_equal(NAME, $driver.find_element(:name, "name").text)
  assert_equal(USERNAME, $driver.find_element(:name, "username").text)
  assert_equal(nil, $driver.find_element(:name, "password").visible?)
end