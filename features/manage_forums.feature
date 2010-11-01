Feature: Manage Forums
	In order to manage Forums
	As an administrator
	I want to have acces to creating, updating and removing Forums

	Scenario: List all Forums
		Given I have forum First, Second
		When I go to the homepage
		Then I should see "First"
		And I should see "Second"

	Scenario: Add new Forum	
		Given I have forum First, Second
		And I add forum Third
		When I go to the homepage
		Then I should see "First"
		And I should see "Second"
		And I should see "Third"

	Scenario: Remove one Forums
		Given I have forums First, Second, Third
		And I remove forum First
		When I go to the homepage
		Then I should see "Second"
		And I should see "Third"
		And I should not see "First"

	Scenario: Change name of Forums
		Given I have forum First
		And I change name of First to Other
		When I go to the homepage
		Then I should see "Other"
		And I should not see "First"

