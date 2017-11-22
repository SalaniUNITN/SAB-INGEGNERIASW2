Given I am a user
And I want to see my clients and the invoices related to them
When I enter a client name
Then I expect to see my client and a list of the invoices related

Scenario: User inserts the client name
	And The client is not in the DB
	Then System returns an error and cancels the operation

Scenario: User inserts the client name
	And The client is in the DB
	And There's no invoice related to the client
	Then Show a message "No invoices related"

Scenario: User inserts the client name
	And The client is in the DB
	And There are invoices related to the client
	Then Show the list of the invoices
