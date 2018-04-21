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
		fail "Error iserting dates. Error: #{e}"
	end
end
