class CheckOutSummary
    #Agrupar en alguna lista o mapa
    PROCEED_CHECKOUT      = { css: '.standard-checkout' }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def proceedCheckout()
        browser.find_element(PROCEED_CHECKOUT).click
    end

end