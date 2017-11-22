Given I have logged in
And I want to see my daily bill
When I click on the button
Then I expect to see a list of the invoices inserted during the current day

Feature: See daily bill

Scenario: User clicks on the "show daily bill" button
	And There are no invoices inserted in that day
	Then A message "No invoices inserted today" is shown

Scenario: User clicks on the "show daily bill" button
	Then System shows the invoices, grouped into "Payed" and "Not payed yet"
	And Total amount is shown
