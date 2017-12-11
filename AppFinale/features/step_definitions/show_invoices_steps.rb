Given("there are bills in the DB") do
  @client=FactoryBot.create(:client)
end

When("I click on the {string}") do |string|
  click_on string
end

Given("I am viewing the list of invoices") do
  visit add_hour_path
end

Then("The invoice should be deleted from the DB") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I change the fields") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I type in all the information") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the new invoice in the list") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I don't type in all the information") do
  pending # Write code here that turns the phrase above into concrete actions
end
