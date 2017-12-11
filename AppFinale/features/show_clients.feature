Feature: Clients management

Background:
	Given there are clients in the DB

Scenario: See the clients
	Given I am viewing the main page
	When I click on "My Clients"
	Then I should see a list of the clients

Scenario: Delete a client
	Given I am viewing the list of clients
	When I click on the "Destroy" button
	Then The client should be deleted from the DB

Scenario: Edit a client
	Given I am viewing the list of clients
	When I click on the "Edit" button
	And I change the information
	And I click on "Update Client"
	Then The client's info should be modified

Scenario: Insert a client
	Given I am viewing the list of clients
	When I click on the "New Client" button
	And I type in the information
	And I click on "Create Client"
	Then The client should be added to the list and inserted in the DB

Scenario: Insert an invalid client
	Given I am viewing the list of clients
	When I click on the "New Client" button
	And I don't type in some information (e.g. name)
	And I click on "Create Client"
	Then I should see an error
