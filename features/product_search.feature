Feature: product_search

    Background:
        Given a new 'chrome' browser
    
    @ignore
	Scenario: Verify simple product search
        Given I navigate to homepage
        When  I search 'Summer Dress'
        And   I select the first product
        Then  I see a product with name like 'Summer Dress'

    @test_case
	Scenario: Verify product serarch with filters
        Given I navigate to homepage
        When   I select women
        And   I filter by 'Black'
        And   I filter by 'Casual'
        And   I filter by 'Cotton'
        And   First item is black
        And   I add to compare the first result
        And   I select compare
        Then  I see a cotton black casual dress