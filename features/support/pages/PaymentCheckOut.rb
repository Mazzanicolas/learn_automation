class PaymentCheckOut
    #Agrupar en alguna lista o mapa
    BANKWIRE_PAYMENT_BUTTON  = { css:   '.bankwire' }
    CONFIRM_PAYMENT          = { xpath: '//button[@type="submit" and @class="button btn btn-default button-medium"]'}
    ORDER_IS_COMPLETE        = { xpath: "//div[@class='box'] //*[contains(text(),'Your order on My Store is complete.')]"}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def select_bankwire()
        browser.find_element(BANKWIRE_PAYMENT_BUTTON).click
    end

    def confirm_payment()
        browser.find_element(CONFIRM_PAYMENT).click
    end

    def is_order_complete?()
        elements = browser.find_element(ORDER_IS_COMPLETE)
    end
    
end