class HomePage
  #Agrupar en alguna lista o mapa
  #Search
  SEARCH_INPUT = {id: 'search_query_top'}
  SEARCH_BUTTON = {css: '#searchbox button'}

  #Accounts
  SIGNIN_BUTTON = {css: '.login'}
  #NavBar
  NAV_WOMEN_BUTTON = {css: ''}
  NAV_DRESSES_BUTTON = {css: '.sf-menu > li > a[title = "Dresses"]'}
  NAV_TSHIRTS_BUTTON = {css: ''}

  CLICK_FIRST_ITEM = {css: '.product_list .ajax_block_product:nth-of-type(1) .product_img_link'}
  QUICK_VIEW = {css: '.product_list .ajax_block_product:nth-of-type(1) .quick-view'}
  SELECTED_ITEM_TITLE = {xpath: '//h1[@itemprop = "name"]'}
  FEATURED_PRODUCT_QV = {css: '#homefeatured .col-sm-4:nth-of-type(2) .quick-view-mobile'}
  ADD_TO_CART_MODAL = {css: '#add_to_cart button'}
  CHECKOUT_BUTTON = {css: '[title="Proceed to checkout"]'}
  ITEM_IFRAME = {css: '.fancybox-iframe'}

  attr_reader :browser

  def initialize(browser)
    @browser = browser
  end

  def proceedToCheckout()
    sleep 5
    browser.find_element(CHECKOUT_BUTTON).click
  end

  def addToCartFromModal()
    sleep 5
    iframe = browser.find_element(ITEM_IFRAME)
    browser.switch_to.frame(iframe)
    browser.find_element(ADD_TO_CART_MODAL).click
    browser.switch_to.default_content
  end

  def quickViewSecondProduct()
    browser.find_element(FEATURED_PRODUCT_QV).click
  end

  def search(search_query)
    browser.find_element(SEARCH_INPUT).clear
    browser.find_element(SEARCH_INPUT).send_keys(search_query)
    browser.find_element(SEARCH_BUTTON).click
  end

  def goToDresses()
    browser.find_element(NAV_DRESSES_BUTTON).click
  end

  def isRightPage?
    browser.title.include?('My Store')
  end

  def clickQuickView()
    browser.find_element(QUICK_VIEW).click
  end

  def clickFirstProduct()
    browser.find_element(CLICK_FIRST_ITEM).click
  end

  def present?(search_result)
    browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
  end

  def clickSignIn()
    browser.find_element(SIGNIN_BUTTON).click

    def waitFor(seconds = 5)
      Selenium::WebDriver::Wait.new(:timeout => seconds).until {yield}
    end

    def displayed?(locator)
      browser.find_element(locator).displayed?
      true
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end
end