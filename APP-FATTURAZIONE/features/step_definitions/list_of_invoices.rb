Given I have logged in
And I want to see the list of all my invoices
When I click on the specific button
Then I expect to see a list of all the invoices created by me

Feature: List of invoices

Scenario: User clicks on the apposite button
	And There are no invoices related to the user
	Then System shows a message "No invoices found"

Scenario: User clicks on the apposite button
	Then System shows a list of all the invoices
	And Shows "Delete" and "Mark as payed" buttons

Scenario: User clicks on the "Delete" button
	Then The corresponding invoice is deleted from the DB

Scenario: User clicks on the "Mark as payed" button
	Then The apposite invoice's attributed is set to "payed"

Scenario: User clicks on the "Mark as payed" button
	And The invoice is already set as "payed"
	Then The apposite invoice's attributed is set to "Not payed"
