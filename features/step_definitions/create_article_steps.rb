Given("I visit the page") do
  visit root_path
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |title, string|
  fill_in(title, :with => string)
end

When("I click {string} button") do |title|
  click_button(title)
end

Then("I should be on {string} page") do |string|
  page.current_path == string
end
