require_relative "../support/hooks"

Then(/^I click on the Standard calculator link$/) do
  #$driver.find_element(:xpath, "//*[@href='/pantaserv/makecalc']//..").click
  $driver.execute_script('arguments[0].click();', $driver.find_element(:xpath, "//*[@href='/pantaserv/makecalc']"))
  sleep(3)
end

When(/^I enter "([^"]*)"$/) do |arg1|
  n = 0
  while n < arg1.length
      $driver.find_element(:xpath, "//*[@href='javascript:digit(#{arg1[n]})']").click
      sleep 3
      n = n + 1
  end

end

Then(/^I click on the Area calculator page$/) do
  $driver.find_element(:xpath, "//*[@src='/img/area.jpg']").click
  $driver.switch_to.window($driver.window_handles.last)
end


When(/^I put width "([^"]*)" feet and "([^"]*)" inch$/) do |wfeet, winch|
  @wfeet = wfeet
  @winch = winch
  $driver.find_element(:xpath, "//*[@name='untWidth']").clear
  $driver.find_element(:name, "subuntWidth").clear
  $driver.find_element(:name, "untWidth").send_key wfeet
  $driver.find_element(:name, "subuntWidth").send_key winch
end

And(/^I put length "([^"]*)" feet and (\d+) inch$/) do |lfeet, linch|
  @lfeet = lfeet
  @linch = linch
  $driver.find_element(:name, "untLength").clear
  $driver.find_element(:name, "subuntLength").clear
  $driver.find_element(:name, "untLength").send_key lfeet
  $driver.find_element(:name, "subuntLength").send_key linch
end

Then(/^I land on the result page$/) do
  assert_equal(true, $driver.find_element(:xpath, "//*[contains(text(),'Results')]").displayed?)
end

When(/^I click on the Calculate button$/) do
  $driver.find_element(:xpath,"//input[@value='Calculate']").click
end

And(/^I validate correct math results$/) do
  # 1 feet = 12 inch
  length_total_inch = @lfeet.to_i * 12 + @linch.to_i
  width_total_inch = @wfeet.to_i * 12 + @winch.to_i
  square = length_total_inch * width_total_inch
  sqfeet = square / 12**2
  sqinch = square % 12**2
  assert_equal("#{sqfeet} sq.feet, #{sqinch} sq.inches",$driver.find_element(:xpath, "//*[contains(text(),'#{sqfeet} sq.feet, #{sqinch} sq.inches')]").text, "ok")
end

When(/^I put "([^"]*)" Celsius$/) do |celsius|
  $driver.find_element(:name, "valueC").send_key celsius
end

Then(/^I click on the temperature calculator page$/) do
  $driver.find_element(:xpath, "//*[@src='/img/temp.jpg']").click
  $driver.switch_to.window($driver.window_handles.last)
end

And(/^I validate that it has correct "([^"]*)"$/) do |fahrenheit|
  #fahrenheit = celsius.to_i * 1.8 + 32 formula
  assert_equal(fahrenheit, $driver.find_element(:name, "valueF").attribute('value'), "Correct")
end

When(/^I land on the Standard Calculator$/) do
  $driver.switch_to.window($driver.window_handles.last)
  assert_equal(true, $driver.find_element(:xpath, "//*[@src='/img/view.jpg']").displayed?)
end

Then(/^I click on the button "([^"]*)"$/) do |value|
  $driver.find_element(:xpath, "//*[contains(@href, '#{value}')]").click
end

And(/^I see result "([^"]*)"$/) do |result|

  #ASK SLAVA ABOUT a lof of spaces
  res = $driver.find_element(:xpath, "//input[@name='result']").attribute('value')
  res.delete! ' '
  assert_equal(result, res)
end