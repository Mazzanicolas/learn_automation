class ShippingCheckOut
    #Agrupar en alguna lista o mapa
    TERMS_CHECKBOX = {id: 'cgv'}
    PROCEED_CHECKOUT      = { css: 'button[name = "processCarrier"]' }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def agreeTerms()
        browser.find_element(TERMS_CHECKBOX).click
    end
    def proceedCheckout()
        browser.find_element(PROCEED_CHECKOUT).click
    end

end