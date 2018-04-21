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
    | email             | firstName | lastName | emailConfirmation | password | address | cityName | postalCode | mobilePhone |
    | zoey5@example.com | FrstName  | LstName  | zoey4@example.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoey6@example.com | FrstName  | LstName  | zoey6@example.com | p455w0rd | 8avn    | MyCity   | 10001      | 09215589    |
    | zoey7@ampleex.com | FrstEman  | LstEman  | zoey7@ampleex.com | pa55word | 9avn    | MyCity2  | 01001      | 09915549    |
    | zoey8@expleam.com | FrstName  | TslName  | zoey8@expleam.com | p4s5w0rd | 10avn   | MyCity3  | 00101      | 19215570    |
    | zoey9@pleexam.com | FrstName  | TslEman  | zoey9@pleexam.com | p4ssw0rd | 31avn   | MyCity4  | 00011      | 08216689    |