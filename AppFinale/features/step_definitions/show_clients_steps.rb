
Given("there are clients in the DB") do
  visit clients_path
end

Given("I am viewing the main page") do
  visit root_path
end

Then("I should see a list of the clients") do
  visit clients_path
end

Given("I am viewing the list of clients") do
  visit clients_path
end

When("I click on the {string} button") do |string|
  click_on "My Clients"
end

Then("The client should be deleted from the DB") do
end

When("I change the information") do
end

Then("The client's info should be modified") do
  click_on "Update Client"
end

When("I type in the information") do
  fill_in "Name", with:"francesco"
  fill_in "Email", with:"francesco@yahoo.it"
  fill_in "P iva", with:"Francesco"
  fill_in "City", with:"Francesco"
  fill_in "Street", with:"true"
  fill_in "Cap", with:"Francesco"
  fill_in "Street number", with:"true"
end

Then("The client should be added to the list and inserted in the DB") do
  click_on "Create Client"
end

Then("I should see a list of the invoices") do
  visit invoices_path
end

Then("The invoices info should be modified") do
  click_on string
end

Given("I am on {string} page") do |string|
  visit string
end

When("I don't type in all the information (e.g. I forget the client name)") do
 fill_in "Name", with:""
 fill_in "Email", with:"francesco@yahoo.it"
 fill_in "P iva", with:"Francesco"
 fill_in "City", with:"Francesco"
 fill_in "Street", with:"true"
 fill_in "Cap", with:"Francesco"
 fill_in "Street number", with:"true"
end

And("I don't type in some information (e.g. name)") do
  fill_in "Name", with:""
  fill_in "Email", with:"francesco@yahoo.it"
  fill_in "P iva", with:"Francesco"
  fill_in "City", with:"Francesco"
  fill_in "Street", with:"true"
  fill_in "Cap", with:"Francesco"
  fill_in "Street number", with:"true"
end



When("I click on {string}") do |string|
  click_on string
end
