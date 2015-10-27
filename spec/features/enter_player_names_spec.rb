require 'capybara'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

# goto form

visit('http://localhost:4567/')

# fill in player one name

fill_in('Player_one', :with => 'Rafael')

# fill in played two name

fill_in('Player_two', :with => 'Ezzy')

# submit form

click_button('Submit')

# see names on screen
