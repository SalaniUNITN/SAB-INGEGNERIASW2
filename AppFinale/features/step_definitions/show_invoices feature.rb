Feature: See the list of all the invoices and modify it

Background: 
	Given there are invoices in the DB

Scenario: There are invoices in the DB created by me
	Given I am viewing the main page	
	When I click on "My invoices"
	Then I should see a list the invoices created by me

Scenario: There are no invoices in the DB created by me
	Given I am viewing the main page	
	When I click on "My invoices"
	Then I should see a message "No invoices in the DB"
	
Scenario: Delete an invoice
	Given I am viewing the list of invoices	
	When I click on "Delete"
	Then The invoice should be deleted from the DB

Scenario: Mark an invoice as payed
	Given I am viewing the list of invoices	
	When I click on "Mark as payed"
	Then The invoice's field should be set to "Payed"

Scenario: Mark an invoice as not payed
	Given I am viewing the list of invoices	
	When I click on "Mark as not payed"
	Then The invoice's field should be set to "Not payed"