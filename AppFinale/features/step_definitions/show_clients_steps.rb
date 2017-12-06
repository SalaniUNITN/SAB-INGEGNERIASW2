Given("I am viewing the main page") do
  visit root_path
end

Given("I am viewing the list of clients") do
  visit cliets_path
end

When("I type in the information") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the lists of invoices") do
  visit invoices_path
end
