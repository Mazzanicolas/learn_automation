When(/^I click search textbox$/) do #|element|
	begin
		@page.click()
        #Use with parameters to click element
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I search '(.*)'$/) do |product_name|
	begin
	#Type product_name
	@page.searchDresses(product_name)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click the first product$/) do 
	begin
	@page.clickFirstProduct()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

Then(/^I see a product with name like '(.*)'$/) do |product_name|
	begin
		@page.is_present?(product_name)
	rescue => e
		fail "Error in results. Error: #{e}"
	end
end

