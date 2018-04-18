Feature: account_creation
    Background:
        Given a new 'chrome' browser
    
    @test_case 
	Scenario: Account creation
        Given I navigate to homepage
        When  I click sign in
        And   I insert 'email@email.com' into the email field 
        And   I click create account
        And   I insert 'Nombre' as name
        And   I insert 'Apeliido' as last name
        And   I insert 'email@email.com' as email 
        And   I insert 'password' as password
        And   I insert 'Address' as address
        And   I insert 'CityName' as city
        And   I select 'state' as state
        And   I insert '0000' as postal code
        And   I select 'Country' as country
        And   I insert '123456789' as mobile phone number
        Then  I see the successful registration



