Feature: See the list of all the invoices and edit it

Background:
	Given there are bills in the DB

Scenario: There are invoices in the DB
	Given I am viewing the main page
	When I click on the "My Invoices" button
	Then I should see a list of the invoices

Scenario: Delete an invoice
	Given I am viewing the list of invoices
	When I click on "Destroy"
	Then The invoice should be deleted from the DB

Scenario: Edit an invoice
	Given I am viewing the list of invoices
	When I click on the "Edit" button
	And I change the fields
	And I click on "Update Add hour"
	Then The invoices info should be modified

Scenario: Create an invoice correctly
	Given I am on "My Invoices" page
	When I click on the "New Invoice" button
	And I type in all the information
	And I click on "Create Add hour"
	Then I should see the new invoice in the list

Scenario: Create the invoice incorrectly
	Given I am on "My Invoices" page
	When I click on the "New Invoice" button
	And I don't type in all the information
	And I click on "Create Add hour"
	Then I should see an error
