Feature: product_purchase
    Background:
        Given a new 'chrome' browser

    @ignore
	Scenario: Purchase blouse 

	Scenario: Purchase dress 
        Given I navigate to homepage
        When I LogIn
        And I navigate to homepage
        And I click Dresses
        And I click the first item
        And I Add the item to the cart
        #And I click continue shopping
        And I click cart
        And I click Proceed to checkout to 'Address'
        And I click Proceed to checkout to 'Shipping' 
        And I agree to the terms
        And I click Proceed to checkout to 'Payment'
        And I select Bank Wire payment
        And I confirm my order
        Then My order is complete
