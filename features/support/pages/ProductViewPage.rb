class ProductViewPage
    #Agrupar en alguna lista o mapa
    #Search
    ADD_CART_BUTTON          = { css: '#add_to_cart button' }
    CONTINUE_SHOPPING_BUTTON = { css: '.continue span'      }
    CART_BUTTON              = { css: '.button-container a' }
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def clickOnAddCart()
        browser.find_element(ADD_CART_BUTTON).click
    end

    def clickOnCart()
        sleep 0.5 until browser.find_element(CART_BUTTON).displayed?
        browser.find_element(CART_BUTTON).click
    end

    def clickContinueShopping()
        waitFor { displayed?(CONTINUE_SHOPPING_BUTTON) }
        browser.find_element(CONTINUE_SHOPPING_BUTTON).click
    end

    def present?(search_result)
        browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
    end

    def waitFor(seconds=30)
        Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
    end
  
    def displayed?(locator)
        browser.find_element(locator).displayed?
        true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
    end
end