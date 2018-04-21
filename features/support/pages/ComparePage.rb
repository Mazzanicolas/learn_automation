class ComparePage
  COMPOSITION_TEXT_BOX = {xpath: '//*[@id="product_comparison"] //tr[2] //td[2]'}
  STYLE_TEXT_BOX = {xpath: '//*[@id="product_comparison"] //tr[3] //td[2]'}

  attr_reader :browser
  def initialize(browser)
    @browser = browser
  end

  def is_cotton?
    browser.find_element(COMPOSITION_TEXT_BOX).text.include? 'Cotton'
  end

  def is_casual?
    browser.find_element(STYLE_TEXT_BOX).text.include? 'Casual'
  end
end