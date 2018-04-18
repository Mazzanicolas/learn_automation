When(/^I search '(.*)'$/) do |query|
	begin
		@page.search(query)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I select the first product$/) do 
	begin
	@page.clickFirstProduct()
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

Then(/^I see a product with name like '(.*)'$/) do |product_name|
	begin
		@page.present?(product_name)
	rescue => e
		fail "Error in results. Error: #{e}"
	end
end

