Feature: See daily bill

Scenario: There are invoices inserted by me during the day
	Given I am on the main page
	When I click on "Daily bill"
	Then I should see the list of the invoices inserted by me during the day grouped into "payed" and "not payed"
	And I should see the total amount

Scenario: There are no daily invoices related to me
	Given I am on the main page
	And There are no invoices inserted by me during the day
	When I click on "Daily bill"
	Then I should see an error