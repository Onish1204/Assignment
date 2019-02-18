require 'capybara/cucumber'
require 'selenium-webdriver'

#Capybara.default_driver = :selenium

Given(/^User is on application homepage$/) do

 visit 'http://www.seleniumeasy.com/test/input-form-demo.html'

 # drivers.navigate.to 'http://www.seleniumeasy.com/test/input-form-demo.html'
  drivers.window_maximize
end

When(/^user enter firstName as \$firstName$/) do
  Fill_in '$firstName', :with => $firstName
end

And(/^user type lastName as \$lastName$/) do
  Fill_in '$lastName', :with => $lastName
end

And(/^user type email as "([^"]*)"$/) do |emailId|
  Fill_in '$email', :with => emailId
end

And(/^user type phone as "([^"]*)"$/) do |phoneNo|
  Fill_in '$phone', :with => phoneNo
end

And(/^user type address as "([^"]*)"$/) do |addr|
  Fill_in '$address', :with => addr
end

And(/^user type city as "([^"]*)"$/) do |cityName|
  Fill_in '$city', :with => cityName
end

And(/^user type zip code as "([^"]*)"$/) do |zipCode|
  Fill_in '$zip', :with => zipCode
end

And(/^user select state as "([^"]*)"$/) do |stateName|
  select($state = stateName )
end

And(/^user enter projectDescription as \$projectDescription$/) do
  $inputValues = [22, 24, 0, 100, 4, 111, 2602, 18]
  value1 = $p.resolvePuzzle
  $inputValues = [60, 33, 1719, 25, 19, 13, -21]
  value2 = $p.resolvePuzzle
  Fill_in '$projectDescription', :with => value1 + " " + value2
end

And(/^user click on send button$/) do
  click_Button('$sendBtn')
end

Then(/^user should be able to see errorMessage as "([^"]*)"$/) do |errorMessage|
  expect('$errorMessage').to have_content errorMessage
end


And(/^user select hosting Option as No$/) do
  click_Button('$hostingNo')
end

And(/^user type website as currentPageUrl$/) do
  Fill_in '$website', :with => driver.current_url
end