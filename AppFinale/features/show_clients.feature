Feature: Clients management

Background:
	Given there are clients related to me in the DB

Scenario: See the clients
	Given I am viewing the main page
	When I click on "My Clients"

Scenario: Delete a client
	Given I am viewing the list of clients
	When I click on "Destroy"
	Then The client should be deleted from the DB and the related invoices with him

Scenario: Edit a client
	Given I am viewing the list of clients
	When I click on "Edit"
	And I change the fields
	And I click on "Edit"
	Then The clients info should be modified

Scenario: Insert a client
	Given I am viewing the list of clients
	When I click on "Add "
	And I type in the information
	And I click on "New Client"
	Then The client should be added to the list and inserted in the DB

Scenario: Insert an invalid client
	Given I am viewing the list of clients
	When I click on "New Client"
	And I dont type in some information (e.g. name)
	And I click on "New Client"
	Then I should see an error

#search bar si può implementare
Scenario: See a client who is in the DB
	Given "Mario Rossi" is in the DB
	And I am viewing a search bar
	When I type "Mario Rossi" in the bar
	And I click on "Search"
	Then I should see my clients information


Scenario: See a client who is not in the DB
	Given "Mario Rossi" is not in the DB
	And I am viewing a search bar
	When I type "Mario Rossi" in the bar
	And I click on "Search"
	Then I should see a message "No client found"

Scenario: Calculate the total bill of a client
	Given I am viewing the list of my clients
	And I click on "Add Invoice"
	Then I should see the lists of invoices
	And I click on "New Invoice"
	And I type in all the information
	Then I should see the new invoice in the list
