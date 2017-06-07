require 'capybara'  # ayta ta prwta 2 requirements se prwth fash de xreiazontai,
require 'rspec'     # isws xreiastoun otan trekseis rspec me capybara
require 'rspec/expectations'
require 'capybara/cucumber'
Capybara.default_driver = :selenium

#### headless testing ####
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'phantomjs/poltergeist'
Capybara.javascript_driver = :poltergeist

#require 'selenium-webdriver'
#require 'test/unit/assertions'
#World(Test::Unit::Assertions)
#Capybara.javascript_driver = :webkit


#Capybara.app_host = "http://localhost"
#Capybara.app_host = "http://msc-support.ct.aegean.gr"

#Capybara.run_server = false

Capybara.default_max_wait_time = 5
#Capybara.default_selector = :xpath
#Capybara.javascript_driver = :selenium # ayto einai to default
#World(Capybara)