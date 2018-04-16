Given(/^a new '(.*)' browser$/) do |browserName| 
	begin
		case browserName
			when "chrome"
				$browser = Selenium::WebDriver.for :chrome
			when "firefox"
				$browser = Selenium::WebDriver.for :firefox
			when "edge"
				$browser = Selenium::WebDriver.for :edge
			else
				$browser = Selenium::WebDriver.for :ie
		end
	rescue => e
		fail "Error opening browser. Error : #{e}"
	end
end

Given(/^I navigate to homepage$/) do
	begin
        $browser.navigate.to "http://automationpractice.com"
        @page = HomePage.new $browser
		fail "We are not in HomePage!" unless @page.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Then(/^I see a '(.*)'$/) do |product_name| 
	begin
		#Implement product_name check
	rescue => e
		fail "Error iserting dates. Error: #{e}"
	end
end
