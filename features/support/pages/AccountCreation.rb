class LogInPage
    #Agrupar en alguna lista o mapa
    FIRST_NAME_INPUT   = {  }
    LAST_NAME_INPUT    = {  }
    EMAIL_INPUT        = {  }
    PASSWORD_INPUT     = {  }
    ADDRESS_INPUT      = {  }
    CITY_INPUT         = {  }
    STATE_INPUT        = {  }
    POSTAL_CODE_INPUT  = {  }
    COUNTRY_INPUT      = {  }
    MOBILE_PHONE_INPUT = {  }
    REGISTER_BUTTON    = {  }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def typeFirstName(first_name)
        browser.find_element(FIRST_NAME_INPUT).clear
        browser.find_element(FIRST_NAME_INPUT).send_keys(first_name)
    end

    def typeLastName(last_name)
        browser.find_element(LAST_NAME_INPUT).clear
        browser.find_element(LAST_NAME_INPUT).send_keys(last_name)
    end

    def typeEmail(email)
        browser.find_element(EMAIL_INPUT).clear
        browser.find_element(EMAIL_INPUT).send_keys(email)
    end

    def typePassword(password)
        browser.find_element(PASSWORD_INPUT).clear
        browser.find_element(PASSWORD_INPUT).send_keys(password)
    end

    def typeAddress(address)
        browser.find_element(ADDRESS_INPUT).clear
        browser.find_element(ADDRESS_INPUT).send_keys(address)
    end

    def typeCity(city)
        browser.find_element(CITY_INPUT).clear
        browser.find_element(CITY_INPUT).send_keys(city)
    end

    def selectState(state)
    end

    def typePostalCode(postal_code)
        browser.find_element(POSTAL_CODE_INPUT).clear
        browser.find_element(POSTAL_CODE_INPUT).send_keys(postal_code)
    end

    def selectContry(country)
    end

    def typeMobilePhone(m_phone)
        browser.find_element(MOBILE_PHONE_INPUT).clear
        browser.find_element(MOBILE_PHONE_INPUT).send_keys(m_phone)
    end

end