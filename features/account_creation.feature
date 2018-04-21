Feature: account_creation
    Background:
        Given a new 'chrome' browser
    
    @ignore 
	Scenario Outline: Account creation
        Given I navigate to homepage
        When  I click sign in
        And   I insert '<email>' into the email field 
        And   I click create account
        And   I insert '<firstName>' as name
        And   I insert '<lastName>' as last name
        And   I insert '<emailConfirmation>' as email 
        And   I insert '<password>' as password
        And   I insert '<address>' as address
        And   I insert '<cityName>' as city
        And   I select 'state' as state
        And   I insert '<postalCode>' as postal code
        And   I select 'Country' as country
        And   I insert '<mobilePhone>' as mobile phone number
        Then  I see the successful registration

Examples:
    | email             | firstName | lastName | emailConfirmation | password | address | cityName | postalCode | mobilePhone |
    | email@example.com | FrstName  | LstName  | email@example.com | p455w0rd | 8avn    | MyCity   | 1000       | 09215589    |
    | liame@ampleex.com | FrstEman  | LstEman  | liame@example.com | pa55word | 9avn    | MyCity2  | 0100       | 09915549    |