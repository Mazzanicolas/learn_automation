When(/^I click sign in$/) do 
	begin
		@page.clickSignIn
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' in to the email field$/) do |email|
	begin
		@page = LogInPage.new $browser
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
		@page = AccountCreation.new $browser
		@page.typeFirstName(name)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as email$/) do |email| 
	begin
		@page.typeEmail(email)
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

When(/^I insert '(.*)' as password$/) do |password| 
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

When(/^I select a state$/) do 
	begin
	@page.selectState
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

When(/^I select a country$/) do 
	begin
	@page.selectCountry
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I insert '(.*)' as mobile phone number$/) do |m_phone_number| 
	begin
	@page.typeMobilePhone(m_phone_number)
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

When(/^I select create account$/) do
	begin
	@page.clickCreateAccount
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end

Then(/^I see the successful registration$/) do 
	begin 
		@page.checkSuccessfullRegistration
	rescue => e
		fail "Error in results. Error: #{e}"
	end
end