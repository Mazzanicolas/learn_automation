
When(/^I filter by '(.*)'$/) do |filter|
  begin
    case filter
      when "Casual"
        @page.select_composition_cotton
      when "Black"
        @page.select_color_black
      when "Cotton"
        @page.select_style_casual
      end
  rescue => e
    fail "Error Filtering. Error: #{e}"
  end
end

When(/^I add to compare the first result$/) do
  begin
    @page.add_to_compare
  rescue => e
    fail "Error Adding to comapre. Error: #{e}"
  end
end

When(/^I select compare$/) do
  begin
    @page.go_to_compare
    @page = ComparePage.new $browser
  rescue => e
    fail "Error going to comapre. Error: #{e}"
  end
end

When(/^First item is black$/) do
  begin
    @page.is_first_item_black?
  rescue => e
    fail "Error First item is not black. Error: #{e}"
  end
end


Then(/^I see a cotton black casual dress$/) do
  begin
    @page.is_cotton?
    @page.is_casual?
  rescue => e
    fail "Error First item is not black. Error: #{e}"
  end
end