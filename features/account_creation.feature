Feature: account_creation
    Background:
        Given a new 'chrome' browser
    
    @test_case 
	Scenario Outline: Account creation
        Given I navigate to homepage
        When  I click sign in
        And   I insert '<email>' in to the email field
        And   I click create account
        And   I insert '<firstName>' as name
        And   I insert '<lastName>' as last name
        And   I insert '<emailConfirmation>' as email 
        And   I insert '<password>' as password
        And   I insert '<address>' as address
        And   I insert '<cityName>' as city
        And   I select a state
        And   I insert '<postalCode>' as postal code
        And   I select a country
        And   I insert '<mobilePhone>' as mobile phone number
        And   I select create account
        Then  I see the successful registration
Examples:
    | email              | firstName | lastName | emailConfirmation  | password | address | cityName | postalCode | mobilePhone |
    | zoey45@example.com | FrstName  | LstName  | zoey45@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoey55@example.com | FrstName  | LstName  | zoey55@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoey65@example.com | FrstName  | LstName  | zoey65@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoey75@example.com | FrstName  | LstName  | zoey75@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoey85@example.com | FrstName  | LstName  | zoey85@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |