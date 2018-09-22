########################################################################################################################
# Assertion Steps
########################################################################################################################

# page title checking
Then(/^I should\s*((?:not)?)\s+see page title as "(.*?)"$/) do |present, title|
end

Then(/^I should\s*((?:not)?)\s+see page title having partial text as "(.*?)"$/) do |present, partial_text_title|
end

# step to check element text
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have text as "(.*?)"$/) do |type, access_name, present, value |
end

# step to check element partial text
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have partial text as "(.*?)"$/) do |type, access_name, present, value |
end

# step to check attribute value
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have attribute "(.*?)" with value "(.*?)"$/) do |type, access_name, present, attrb, value|
end

# step to check element enabled or not
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+be (enabled|disabled)$/) do |type, access_name, present, state|
end

# step to check element present or not
Then(/^element having (.+) "(.*?)" should\s*((?:not)?)\s+be present$/) do |type, access_name, present|
end

# step to assert checkbox is checked or unchecked
Then(/^checkbox having (.+) "(.*?)" should be (checked|unchecked)$/) do |type, access_name, state|
end

# steps to assert radio button checked or unchecked
Then(/^radio button having (.+) "(.*?)" should be (selected|unselected)$/) do |type, access_name, state|
end

# steps to assert option by text from radio button group selected/unselected
Then(/^option "(.*?)" by (.+) from radio button group having (.+) "(.*?)" should be (selected|unselected)$/) do |option, attrb, type, access_name, state|
end

# steps to check link presence
Then(/^link having text "(.*?)" should\s*((?:not)?)\s+be present$/) do |access_name, present|
end

Then(/^link having partial text "(.*?)" should\s*((?:not)?)\s+be present$/) do |access_name, present|
end

# step to assert javascript pop-up alert text
Then(/^I should see alert text as "(.*?)"$/) do |actual_value|
end

# step to assert dropdown list
Then(/^option "(.*?)" by (.+) from dropdown having (.+) "(.*?)" should be (selected|unselected)$/) do |option, by, type, access_name, state|
end

# step to assert difference in images
Then(/^actual image having (.+) "(.*?)" and expected image having (.+) "(.*?)" should be similar$/) do |actual_img_access_type, actual_img_access_name, excp_img_access_type, excp_img_access_name|
end

########################################################################################################################
# Click Elements Steps
########################################################################################################################

# click on web element
When(/^I click on element having (.+) "(.*?)"$/) do |type, access_name|
end

Then(/^I forcefully click on element having (.+) "(.*?)"$/) do |type, access_name|
end

# double click on web element
Then(/^I double click on element having (.+) "(.*?)"$/) do |type, access_value|
end

# steps to click on link
Then(/^I click on link having text "(.*?)"$/) do |access_name|
end

Then(/^I click on link having partial text "(.*?)"$/) do |access_name|
end

When(/^I tap on element having (.+) "(.*?)"$/) do |type, access_name|
end

########################################################################################################################
# Configuration Steps
########################################################################################################################

# step to print configuration
Then(/^I print configuration$/) do
end

########################################################################################################################
# Input Steps
########################################################################################################################

# enter text into input field steps
Then(/^I enter "([^\"]*)" into input field having (.+) "([^\"]*)"$/) do |text, type, access_name|
end

# clear input field steps
Then(/^I clear input field having (.+) "([^\"]*)"$/) do |type, access_name|
end

# select option by text/value from dropdown/multiselect
Then(/^I select "(.*?)" option by (.+) from\s*((?:multiselect)?)\sdropdown having (.+) "(.*?)"$/) do |option, option_by, present, type, access_name|
end

# select option by index from dropdown/multiselect
Then(/^I select (\d+) option by index from\s*((?:multiselect)?)\sdropdown having (.+) "(.*?)"$/) do |option, present, type, access_name|
end

# step to select option from mutliselect dropdown list
Then(/^I select all options from multiselect dropdown having (.+) "(.*?)"$/) do |type, access_name|
end

# step to unselect option from mutliselect dropdown list
Then(/^I unselect all options from multiselect dropdown having (.+) "(.*?)"$/) do |type, access_name|
end

# check checkbox steps
Then(/^I check the checkbox having (.+) "(.*?)"$/) do |type, access_name|
end

# uncheck checkbox steps
Then(/^I uncheck the checkbox having (.+) "(.*?)"$/) do |type, access_name|
end

# steps to toggle checkbox
Then(/^I toggle checkbox having (.+) "(.*?)"$/) do |type, access_name|
end

# step to select radio button
Then(/^I select radio button having (.+) "(.*?)"$/) do |type, access_name|
end

# steps to select option by text from radio button group
Then(/^I select "(.*?)" option by (.+) from radio button group having (.+) "(.*?)"$/) do |option, option_by, type, access_name|
end

########################################################################################################################
# Javascript Handling Steps
########################################################################################################################

Then(/^I accept alert$/) do
end

Then(/^I dismiss alert$/) do
end

########################################################################################################################
# Mobile Steps
########################################################################################################################

#---------- swipe with elements
Then(/^I swipe from element having (.+) "(.*?)" to element having (.+) "(.*?)"$/) do |type1,access_name1,type2,access_name2|
end

#---------- swipe with co-ordinates
Then(/^I swipe from co\-ordinates "(.*?)","(.*?)" to co\-ordinates "(.*?)","(.*?)"$/) do |start_x, start_y, end_x, end_y|
end

#---------- Swipe with direction
Then(/^I swipe left$/) do
end

Then(/^I swipe right$/) do
end

Then(/^I swipe up$/) do
end

Then(/^I swipe down$/) do
end

#----------- Swipe element with direction
Then(/^I swipe element having (.+) "(.*?)" to right$/) do |type, access_name|
end

Then(/^I swipe element having (.+) "(.*?)" to left$/) do |type, access_name|
end

Then(/^I swipe element having (.+) "(.*?)" to up$/) do |type, access_name|
end

Then(/^I swipe element having (.+) "(.*?)" to down$/) do |type, access_name|
end

#swipe co-ordinates with direction
Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to left$/) do |start_x, start_y|
end

Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to right$/) do |start_x, start_y|
end

Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to up$/) do |start_x, start_y|
end

Then(/^I swipe co\-ordinates "(.*?)","(.*?)" to down$/) do |start_x, start_y|
end

Then(/^I long tap on element having (.+) "(.*?)"$/) do |type, access_name|
end

Then(/^I long tap on element having (.+) "(.*?)" for "(.*?)" sec$/) do |type, access_name, duration|
end

Then(/^I long tap on co\-ordinate "(.*?)","(.*?)"$/) do |x, y|
end

Then(/^I long tap on co\-ordinate "(.*?)","(.*?)" for "(.*?)" sec$/) do |x, y, duration|
end

Then(/^I close app$/) do
end

Then(/^I tap on back button of device$/) do
end

Then(/^I press back button of device$/) do
end

########################################################################################################################
# Navigation Steps
########################################################################################################################

Then(/^I navigate to "([^\"]*)"$/)do |link|
end

Then(/^I navigate forward/) do
end

Then(/^I navigate back/) do
end

Then(/^I close browser$/) do
end

# step to resize browser
Then(/^I resize browser window size to width (\d+) and height (\d+)$/) do |width, heigth|
end

# step to maximize browser
Then(/^I maximize browser window$/) do
end

# step to refresh page
Then(/^I refresh page$/) do
end

# step to switch to new window
Then(/^I switch to new window$/) do
end

# step to switch to previous window
Then(/^I switch to previous window$/) do
end

# step to switch to main window
Then(/^I switch to main window$/) do
end

Then(/^I switch to window having title "(.*?)"$/) do |window_title|
end

# step to close new window
Then(/^I close new window$/) do
end

# step to switch to main content
Then(/^I switch to main content$/) do
end

# step to switch to frame
Then(/^I switch to frame "(.*?)"$/) do |frame|
end

# steps to scroll to element
Then(/^I scroll to element having (.+) "(.*?)"$/) do |type, access_name|
end

# steps to scroll web page to top or end
Then(/^I scroll to (top|end) of page$/) do |to|
end

# step to hover over a element       Note: Doesn't work on Windows firefox
When(/^I hover over element having (.+) "(.*?)"$/) do |type, access_name|
end

# steps to zoom in page
Then(/^I zoom in page$/) do
end

# steps to zoom out page
Then(/^I zoom out page$/) do
end

# method to reset page view
Then(/^I reset page view$/) do
end

# steps to zoom out till element displays
Then(/^I zoom out page till I see element having (.+) "(.*?)"$/) do |type, access_name|
end

########################################################################################################################
# Progress Steps
########################################################################################################################

# wait for specific period of time
Then(/^I wait for (\d+) sec$/) do |time|
end

# wait for specific element to display for specific period of time
Then(/^I wait (\d+) seconds for element having (.+) "(.*?)" to display$/) do |duration, type, access_name|
end

# wait for specific element to enable for specific period of time
Then(/^I wait (\d+) seconds for element having (.+) "(.*?)" to enable$/) do |duration, type, access_name|
end

########################################################################################################################
# Screenshot Steps
########################################################################################################################

Then(/^I take screenshot$/) do
end