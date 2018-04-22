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
    | zoe140@esample.com | FrstZoey  | LstName  | zoe140@esample.com | p455w0rd | 8avn    | MyCity   | 10000      | 09215589    |
    | zoe150@esample.com | ZoeyVoey  | TltName  | zoe150@esample.com | p4sswwwd | 6avn    | MyCiti   | 01000      | 05225589    |
    | zoe160@esample.com | soyrName  | LstNare  | zoe160@esample.com | p4ssw0rf | 5avn    | MyCyti   | 00010      | 06216589    |
    | zoe170@esample.com | zoelName  | LstNAME  | zoe170@esample.com | p4ss30rd | 4avn    | MySity   | 00001      | 07215659    |
    | zoe180@esample.com | Ffstfamf  | LStName  | zoe180@esample.com | pA5sw0rd | 1avn    | MyZity   | 10001      | 08215599    |
