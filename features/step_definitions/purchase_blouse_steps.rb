When(/^I quick view a dress in the home page$/) do
	begin
		@page.quickViewSecondProduct()
	rescue => e
		fail "Error cant find quick view. Error: #{e}"
	end
end

When(/^I add the item to the cart$/) do 
	begin
	@page.addToCartFromModal()
	rescue => e
		fail "Error adding to cart. Error: #{e}"
	end
end

When(/^I proceed to check out$/) do 
	begin
	@page.proceedToCheckout()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I proceed to checkout to '(.*)'$/) do |checkOutStep|
	begin
        	@page.proceedCheckout()
        case checkOutStep
		when "Address"
			@page = AddressCheckOut.new $browser
		when "Shipping"
			@page = ShippingCheckOut.new $browser
		when "Payment"
			@page = PaymentCheckOut.new $browser
		end
	rescue => e
		fail "Error proceeding to checkout. Error: #{e}"
	end
end

When(/^I agree to the terms$/) do
	begin
        @page.agreeTerms()
	rescue => e
		fail "Error agreeing to terms. Error: #{e}"
	end
end

When(/^I select Bank Wire payment$/) do
	begin
        @page.select_bankwire()
	rescue => e
		fail "Error selecting payment. Error: #{e}"
	end
end

When(/^I confirm my order$/) do 
	begin
        	@page.confirm_payment()
	rescue => e
		fail "Error confirming dates. Error: #{e}"
	end
end

Then(/^My order is complete$/) do 
	begin
        	@page.is_order_complete?()
	rescue => e
		fail "Error completing orders. Error: #{e}"
	end
end