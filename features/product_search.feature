Feature: product_search

    Background:
        Given a new 'chrome' browser

    @test_case 
	Scenario: Verify simple product search
        Given I navigate to homepage
        When I click search textbox
        And I type 'Summer Dress'
        And I click the first product
        Then I see a 'Summer Dress'

    @ignore 
	Scenario: Verify product serarch with filters
        Given I navigate to homepage
