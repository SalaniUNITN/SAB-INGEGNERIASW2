Given("there are bills in the DB") do
  @client=FactoryBot.create(:client)
end

Given("I am on bills page") do
  visit add_hours_path
end

Then("I should see a list of the hours to bill") do
  expect(page).to have_content(@add_hour)
end

Given("I am viewing the list of bill") do
  visit add_hours_path
end

When("I click on {string} button") do |string|
  click_on string
end

Then("The invoice should be deleted from the DB") do
end

When("I change the fields") do
end

When("I type in all the information") do
end

Then("I should see the new add hour in the list") do
end

When("I don't type in all the information") do
end
