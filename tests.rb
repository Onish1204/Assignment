=begin
require 'rubygems'
require 'Selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "http://facebook.com"
puts "facebook loaded"
=end

