When(/^I click search textbox$/) do #|element|
	begin
        #Use with parameters to click element
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I type '(.*)'$/) do |product_name|
	begin
        #Type product_name
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click the first product$/) do 
	begin

	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

