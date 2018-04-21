Feature: product_search

    Background:
        Given a new 'chrome' browser
    
    @ignore
	Scenario: Verify simple product search
        Given I navigate to homepage
        When  I search 'Summer Dress'
        And   I select the first product
        Then  I see a product with name like 'Summer Dress'

    @ignore 
	Scenario: Verify product serarch with filters
        Given I navigate to homepage
        And   I select women
        And   I filter by size 'S'
        And   I select composition 'Cotton'
        And   I select color 'Black'
        And   I add to compare the first result
        And   I select compare
        Then  I see a cotton black small dress