require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rubygems'

  Capybara.default_driver = :selenium

  $firstName = driver.find_element(:name, 'first_name')

  $lastName = driver.find_element(:name, 'last_name')

  $email = driver.find_element(:name, 'email')

  $phone = driver.find_element(:name, 'phone')

  $address = driver.find_element(:name, 'address')

  $city = driver.find_element(:name, 'city')

  $state = driver.find_element(:name, 'state')

  $zip = driver.find_element(:name, 'zip')

  $website= driver.find_element(:name, 'website')

  $hostingYes = driver.find_element(:name, 'hosting', :value, 'yes')

  $hostingNo= driver.find_element(:name, 'hosting', :value, 'no')

  $projectDescription= driver.find_element(:name, 'comment')

  $sendBtn = driver.find_element(:type, 'submit')

  $errorMessage= driver.find_element(:name, 'errorMessage') # did not find this element on webpage
