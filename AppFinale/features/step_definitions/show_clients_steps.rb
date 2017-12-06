Given("I am viewing the main page") do
  visit root_path
end

Given("I am viewing the list of clients") do
  visit clients_path
end

When("I type in the information") do
  fill_in "Name", with:"Francesco"
  fill_in "Email", with:"12211234"
  fill_in "P iva", with:"123"
  fill_in "City", with:"12211234"
  fill_in "Street", with:"123"
  fill_in "Cap", with:"12211234"
  fill_in "Street number", with:"123"
  click_on "Create Client"
end

Then("I should see the lists of invoices") do
  visit invoices_path
end

Then("The client should be deleted from the DB and the related invoices with him") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I change the fields") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The clients info should be modified") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("The client should be added to the list and inserted in the DB") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I dont type in some information (e.g. name)") do
  fill_in "Name", with:""
  fill_in "Email", with:"12211234"
  fill_in "P iva", with:"123"
  fill_in "City", with:"12211234"
  fill_in "Street", with:"123"
  fill_in "Cap", with:"12211234"
  fill_in "Street number", with:"123"
  click_on "Create Client"
end

When("I dont type in some information (e.g. name)") do
  fill_in "Name", with:""
  fill_in "Email", with:"12211234"
  fill_in "P iva", with:"123"
  fill_in "City", with:"12211234"
  fill_in "Street", with:"123"
  fill_in "Cap", with:"12211234"
  fill_in "Street number", with:"123"
  click_on "Create Client"
end

Given("{string} is in the DB") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing a search bar") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I type {string} in the bar") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see my clients information") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("{string} is not in the DB") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see a message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing the list of my clients") do
  pending # Write code here that turns the phrase above into concrete actions
end
