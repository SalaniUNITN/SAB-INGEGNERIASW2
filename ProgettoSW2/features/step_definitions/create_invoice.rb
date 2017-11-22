Given I have logged in
And I want to create an invoice for a specific client
When I enter the client, the amount of hours to bill and the hourly wage
Then I expect to see the new invoice in my DB

Feature: Create an invoice for a specific client


Scenario: User creates the invoice
	And Doesn't insert the client
	Then System returns an error and cancels the operation


Scenario: User creates the invoice
	And Doesn't insert the amount of hours
	Then System returns an error and cancels the operation


Scenario: User creates the invoice
	And Doesn't insert the hourly wage
	Then System returns an error and cancels the operation

Scenario: User creates the invoice
	And Inserts all the information correctly
	Then System creates the invoice and inserts it in the DB
	And The new invoice is shown on display
