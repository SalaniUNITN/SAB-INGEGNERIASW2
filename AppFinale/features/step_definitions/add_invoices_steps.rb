Given("There are clients in my list of clients") do
  @client=FactoryBot.create(:client)
end


When("I click on {string}") do |string|
  click_on string
end

Given("I am viewing the clients list") do
  visit clients_path
end

When("I type in all the information") do
  fill_in "Name", with:"Francesco"
  fill_in "P ivatotal", with:"1234"
  select "#{@client.name}", from:"invoice[client_id]"
  fill_in "Bill", with:"123"
  click_on "Create Invoice"
end

Then("I should see the new invoice in the list") do
  invoice=Invoice.last
  expect(page).to have_content(invoice.name)
  expect(page).to have_content(invoice.p_ivatotal)
  expect(page).to have_content(invoice.total)
end


And("I dont type in all the information") do
  fill_in "Name", with:""
  fill_in "P ivatotal", with:"1234"
  select "#{@client.name}", from:"invoice[client_id]"
  fill_in "Bill", with:"123"
  click_on "Create Invoice"
end


Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
