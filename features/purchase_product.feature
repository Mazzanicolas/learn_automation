Feature: product_purchase
    Background:
        Given a new 'chrome' browser

    @ignore
	Scenario: Purchase blouse form quick view
        Given I navigate to homepage
        When  I quick view a dress in the home page
        And   I add it to cart
        And   I proceed to check out
        
        And   I proceed to checkout to 'Address'
        And   I proceed to checkout to 'Shipping' 
        And   I agree to the terms
        And   I proceed to checkout to 'Payment'
        And   I select Bank Wire payment
        And   I confirm my order
        Then  My order is complete

    @test_case
	Scenario: Purchase dress 
        Given I navigate to homepage
        When  I LogIn
        And   I navigate to homepage
        And   I select Dresses
        And   I select the first item
        And   I Add the item to the cart
        And   I select my cart
        And   I proceed to checkout to 'Address'
        And   I proceed to checkout to 'Shipping' 
        And   I agree to the terms
        And   I proceed to checkout to 'Payment'
        And   I select Bank Wire payment
        And   I confirm my order
        Then  My order is complete
