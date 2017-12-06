Feature: see clients and invoices related

Background:
	Given: there is a DB which contains clients and invoices

Scenario: See a client who is in the DB
	Given "Mario Rossi" is in the DB
	And I am viewing a search bar
	When I type "Mario Rossi" in the bar
	And I click on "Search"
	Then I should see my clients information and a list of the invoices related to him

Scenario: Search for a client which is not in the DB
	Given "Mario Rossi" is not in the DB
	And I am viewing a search bar
	When I type "Mario Rossi" in the search bar
	And I click on "Search"
	Then I should see an error

Scenario: See a client who is in the DB but has no invoices related
	Given "Mario Rossi" is in the DB
	And I am viewing a search bar
	When I type "Mario Rossi" in the bar
	And I click on "Search"
	Then If the list of invoices is empty I should see my clients information and a message "No invoices related"
