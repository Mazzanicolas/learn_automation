When(/^I click sign in$/) do 
	begin
		@page.clickSignIn
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^(I insert '(.*)' in to the email field|I insert '(.*)' as email)$/) do |email| 
	begin#Tal vez separar en dos porque so dos paginas diferentes
	@page.typeEmailToRegister(email)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I click create account$/) do
	begin
	@page.clickCreateAccount
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as name$/) do |name| 
	begin
	@page.typeFirstName(name)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as last name$/) do |last_name| 
	begin
	@page.typeLastName(last_name)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as passworde$/) do |password| 
	begin
	@page.typePassword(password)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as address$/) do |address| 
	begin
	@page.typeAddress(address)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as city$/) do |city| 
	begin
	@page.typeCity(city)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I select '(.*)' as state$/) do |state| 
	begin
	@page.selectState(state)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as postal code$/) do |postal_code| 
	begin
	@page.typePostalCode(postal_code)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I select '(.*)' as country$/) do |country| 
	begin
	@page.selectCountry(country)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as mobile phone number$/) do |m_phone_numer| 
	begin
	@page.typeMobilePhone(m_phone_number)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

Then(/^I see the succsessful registration$/) do 
	begin 

	rescue => e
		fail "Error in results. Error: #{e}"
	end
end