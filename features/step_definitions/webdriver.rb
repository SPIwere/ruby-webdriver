require_relative "../support/hooks"

Given(/^I open "([^"]*)" page and log details$/) do |page|
def printq
  puts "current page:  " + $driver.current_url
  puts "page title:  " + $driver.title
  puts "window handels:  " + $driver.window_handles.to_s
  puts $driver.manage.logs.get(:browser)
end

case page
  when "sample"
    $driver.get("http://skryabin.com/webdriver/html/sample.html")
    printq
  else
    $driver.get("https://www.#{page}.com/") if page
    printq
  end
end

Then(/^I go back and forward and refresh$/) do
  $driver.navigate.back
  $driver.navigate.forward
  $driver.navigate.refresh
end