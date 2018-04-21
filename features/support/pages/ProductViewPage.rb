class ProductViewPage
    #Agrupar en alguna lista o mapa
    #Search
    ADD_CART_BUTTON          = { css: '#add_to_cart button'               }
    CONTINUE_SHOPPING_BUTTON = { css: '.continue span'                    }
    CART_BUTTON              = { css: 'button-container a'                }
    CART_BUTTON_             = { css: 'a[title ="View my shopping cart"]' }
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def clickOnAddCart()
        browser.find_element(ADD_CART_BUTTON).click
    end

    def clickOnCart()
        if browser.displayed?(CART_BUTTON_)
            browser.find_element(CART_BUTTON_).click
        else
            browser.find_element(CART_BUTTON).click
        end
    end

    def clickContinueShopping()
        wait_for { displayed?(CONTINUE_SHOPPING_BUTTON) }
        browser.find_element(CONTINUE_SHOPPING_BUTTON).click
    end

    def is_present?(search_result)
        browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
    end

    def wait_for(seconds=30)
        Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
    end
  
    def displayed?(locator)
        browser.find_element(locator).displayed?
        true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
    end
end