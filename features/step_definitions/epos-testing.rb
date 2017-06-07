
##### Given #####
Given(/^I am on the "([^"]*)" page$/) do |current_url|  #TESTED
  visit current_url
end


##### When #####
When(/^I click on (.*)$/) do |link|  #TESTED
  click_on(link)
end

When(/^I hit on selection field with id "([^"]*)"$/) do |link_id|
  # find('select', :class => link_id)  #douleyei xrhsimopoiwntas to tag-type kai thn class
  find_field(link_id)  #douleyei xrhsimopoiwntas to name
end
# find_by_id(link_id).click
# find_link(id: link_id).click


##### Then #####
Then(/^I should go to "([^"]*)"$/) do |page_url|
  visit(page_url)
end

Then(/^I should see the (.*)$/) do |text|  #TESTED
  #page.has_content?(text)
  page.should have_content(text)
#  page.should have_content text   # ayto den trexei, isws xreiazetai na
end

Then(/^I should see header image (.*)$/) do |header_image|  #TESTED
  page.has_selector?(header_image)
end

Then(/^I should see "([^"]*)" in a link$/) do |link_text|  #TESTED
  page.has_link?(link_text)
end

Then(/^I select option "([^"]*)" from the search field with class "([^"]*)"$/) do |option, search_field_class|
  # find_field(class: search_field_class)  #select2-search__field
  # find('select', :class => search_field_class).find(:xpath, 'option[2]').select_option
  select(option, from: search_field_class).select_option
end

Then(/^I fill "([^"]*)" field with value "([^"]*)"$/) do |field_id, typed_value|  #TESTED
  #find_field(id: field_id).value(typed_value)   #select2-search__field
  fill_in field_id, with: typed_value
end

Then /^I should be in path "([^"]*)"$/ do |page_url|  #TESTED
  # doueyei efoson eite exeis orisei to Capybara.app_host eite vriskeit host apo to Given I am on...
  expect(page).to have_current_path(page_url)  # /epos/src/users/main.php
end

Then /^I should be in url "([^"]*)"$/ do |page_url|
  expect(current_url).to eq(page_url)
end

Then /^I wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

Then(/^There should be an element with class name "([^"]*)"$/) do |class_name|
  # find('select', :class => link_id)  #douleyei xrhsimopoiwntas to tag-type kai thn class
  find('div', :class => class_name).find('th', text: 'email')
end