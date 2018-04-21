class WomanPage

  CHECKBOX_STYLE_CASUAL = {id: 'layered_id_feature_11'}
  CHECKBOX_COMPOSITION_COTTON = {id: 'layered_id_feature_5'}
  FILTER_BLACK = {id: 'layered_id_attribute_group_11'}
  ADD_TO_COMPARE_BUTTON = {xpath: '(//*[@class= "add_to_compare"])[1]'}
  COMPARE_BUTTON = {css: '.top-pagination-content .bt_compare'}
  FIRST_ITEM_BLACK_COLOR_BOX = {xpath: '(//div[@class="product-container"])[1] //a[contains(@href,"black")]' }


  attr_reader :browser

  def initialize(browser)
    @browser = browser
  end

  def select_style_casual
    browser.find_element( CHECKBOX_STYLE_CASUAL).click
    sleep 5
  end

  def select_composition_cotton
    browser.find_element(CHECKBOX_COMPOSITION_COTTON).click
    sleep 5
  end

  def select_color_black
    browser.find_element(FILTER_BLACK).click
    sleep 5
  end

  def add_to_compare
    browser.find_element(ADD_TO_COMPARE_BUTTON).click
    sleep 3
  end

  def go_to_compare
    browser.find_element(COMPARE_BUTTON).click
  end


  def is_first_item_black?
    browser.find_element(FIRST_ITEM_BLACK_COLOR_BOX)
  end

  def select_filter(label)
    get_filter_element(label).click
  end

  def get_filter_element(label)
    xpath = '//*[@id ="layered_block_left"] //*[contains(text(),'+label+')]'
    selector = {xpath: xpath}
    element = browser.find_element(selector)
    element
  end
end