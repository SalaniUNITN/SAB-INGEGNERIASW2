Given I have logged in
And I want to manage the list of clients
When I click on my profile
Then I expect to see the list of my clients and be able to modify it

Feature: Clients management

Scenario: User clicks on the apposite button
	And There are no clients related to the user
	Then System shows a message "No clients found"

Scenario: User clicks on the apposite button
	Then System shows a list of the clients with buttons to delete, insert and modify them

Scenario: User clicks on the "delete client" button
	And There are no invoices related to the client
	Then The client is deleted from the DB

Scenario: User clicks on the "modify client" button
	And Inserts new data about the client
	Then System changes previous information with the new given
	And Shows the new client

Scenario: User clicks on the "insert client" button
	And Enters incorrect data about the client
	Then System shows an error message and cancels operation


Scenario: User clicks on the "insert client" button
	And Enters data about the client
	Then The client is added to the DB
	And Shown

Scenario: User looks for a client with the "Search" bar
	And There's no corresponding client
	Then System shows a message "No client found"


Scenario: User looks for a client with the "Search" bar
	And There's a corresponding client
	Then System shows the client
