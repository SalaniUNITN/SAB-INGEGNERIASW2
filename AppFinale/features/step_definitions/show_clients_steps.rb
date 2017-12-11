
Given("there are clients in the DB") do
  @client=FactoryBot.create(:client)
end

Given("I am viewing the main page") do
  visit root_path
end

Then("I should see a list of the clients") do
  expect(page).to have_content(@client.email)
  expect(page).to have_link("Edit")
end

Given("I am viewing the list of clients") do
  visit clients_path
end

Then("The client should be deleted from the DB") do

end

When("I change the information") do

end

Then("The client's info should be modified") do
  expect(page).to have_content(@client.name)
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
  expect(page).to have_content(@client)
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

And("I don't type in some information") do
  fill_in "Name", with:""
  fill_in "Email", with:"francesco@yahoo.it"
  fill_in "P iva", with:"Francesco"
  fill_in "City", with:"Francesco"
  fill_in "Street", with:"true"
  fill_in "Cap", with:"Francesco"
  fill_in "Street number", with:"true"
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end


When("I click on {string}") do |string|
  click_on string
end
