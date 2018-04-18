class LogInPage
    #Agrupar en alguna lista o mapa
    EMAIL          = { id: 'email'      }
    PASSWORD       = { id: 'passwd'     }
    SIGN_IN_BUTTON = { id: 'SubmitLogin'}

    CREATE_ACCOUNT_BUTTON    = {  }
    EMAIL_REGISTRATION_INPUT = {  }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def logIn()
        browser.find_element(EMAIL).clear
        browser.find_element(EMAIL).send_keys('seleniumTesting@testing.com')

        browser.find_element(PASSWORD).clear
        browser.find_element(PASSWORD).send_keys('SeleniumTesting')

        browser.find_element(SIGN_IN_BUTTON).click    
    end

    def typeEmailToRegister(email)
        browser.find_element(EMAIL_REGISTRATION).clear
        browser.find_element(EMAIL).send_keys(email)
    end

    def clickCreateAccount()
        browser.find_element(CREATE_ACCOUNT_BUTTON).click
    end

end