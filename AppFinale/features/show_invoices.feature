Feature: See the list of all the invoices and edit it

Background:
	Given there are bills in the DB

Scenario: There are add hour in the DB
	Given I am viewing the main page
	When I click on "My Invoices" button
	Then I should see a list of the hours to bill

Scenario: Delete a bill
	Given I am viewing the list of bill
	When I click on "Destroy" button
	Then The invoice should be deleted from the DB

Scenario: Edit a bill
	Given I am viewing the list of bill
	When I click on "Edit" button
	And I change the fields
	And I click on "Update Add hour"
	Then The invoices info should be modified

Scenario: Create a bill correctly
	Given I am on bills page
	When I click on "New Invoice" button
	And I type in all the information
	And I click on "Create Add hour"
	Then I should see the new add hour in the list

Scenario: Create a bill incorrectly
	Given I am on bills page
	When I click on "New Invoice" button
	And I don't type in all the information
	And I click on "Create Add hour"
	Then I should see an error
