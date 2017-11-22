Given I have logged in
And I want to calculate the total bill of a client
When I enter a client
Then I expect to see the total bill of his invoices

Feature: Calculate the total bill of a specific client

Scenario: User enters the name of a client
	And The client is not in the DB
	Then System shows an error message and cancels the operation

Scenario: User enters the name of a client
	And The client has no invoices related
	Then System shows a message "No invoices related"

Scenario: User enters the name of a client
	Then System calculates the sum of the bills of the invoices, excluding the ones already payed
	And Shows the result
