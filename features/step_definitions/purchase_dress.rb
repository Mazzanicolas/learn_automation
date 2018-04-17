When(/^I click Dresses$/) do #|element|
	begin
        @page.goToDresses()
        @Page = DressesPage.new $browser
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click the first item$/) do #|element|
	begin
        @page.clickFirstProduct()
        @page = ProductViewPage.new $browser
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I Add the item to the cart$/) do #|element|
	begin
		@page.clickOnAddCart()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click continue shopping$/) do #|element|
	begin
		@page.clickContinueShopping()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click cart$/) do #|element|
	begin
        @page.clickOnCart()
        @page = CheckOutSummary.new $browser
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click Proceed to checkout to '(.*)'$/) do |checkOutStep|
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
        #Use with parameters to click element
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I agree to the terms$/) do #|element|
	begin
        @page.agreeTerms()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end



When(/^I select Bank Wire payment$/) do #|element|
	begin
        @page.select_bankire()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I confirm my order$/) do #|element|
	begin
        @page.confirm_payment()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

Then(/^My order is complete$/) do #|element|
	begin
        @page.is_order_complete?()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end