class LogInPage
    #Agrupar en alguna lista o mapa
    EMAIL          = { id:  'email'    }
    PASSWORD       = { id:  'passwd'   }
    SIGN_IN_BUTTON = { id:'SubmitLogin'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def logIn()
        browser.find_element(EMAIL).clear
        browser.find_element(EMAIL).send_keys 'seleniumTesting@testing.com'

        browser.find_element(PASSWORD).clear
        browser.find_element(PASSWORD).send_keys 'SeleniumTesting'

        browser.find_element(SIGN_IN_BUTTON).click    
    end

end