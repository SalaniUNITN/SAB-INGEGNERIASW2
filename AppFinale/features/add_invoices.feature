Feature: Create an invoice for a specific client

Background:
	Given There are clients in my list of clients

Scenario: Create the invoice correctly
	Given I am viewing the clients list
	When I click on "Add invoice"
	And I type in all the information
	And I click on "Add"
	Then I should see the new invoice in the list


Scenario: Create the invoice incorrectly
	Given I am viewing the clients list
	When I click on "Add invoice"
	And I dont type in all the information (e.g. I forget the hours)
	And I click on "Add"
  Then I should see an error
