Feature: account_creation
    Background:
        Given a new 'chrome' browser
    
    @ignore 
	Scenario: Account creation
        Given I navigate to homepage
        When I click Sign in
        And I insert 'email@email.com' into the email field 
        And I click create account
        And I insert 'Nombre' into personal name field
        And I insert 'Apeliido' into personal last name field
        And I insert 'email@email.com' into the email field 



