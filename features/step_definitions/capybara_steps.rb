Given /^(?:I )?am on the home page/ do
  visit("/")
end

When /^I fill in '(.*)' for '(.*)'$/ do |value, field|
  fill_in(field, :with => value)
end

When /^I press '(.+)'$/ do |name|
  click_button(name)
end

Then /^(?:I )?should see "([^"]+)"$/ do |text|
  body.should match(/#{text}/m)
end

Then /^(?:I )?should not see "([^\"]*)"$/ do |text|
  body.should_not match(/#{text}/m)
end
