class AccountCreation
    #Agrupar en alguna lista o mapa
    FIRST_NAME_INPUT   = { css: '#customer_firstname' }
    LAST_NAME_INPUT    = { css: '#customer_lastname'  }
    FIRST_NAME_INPUT_  = { css: '#firstname' }
    LAST_NAME_INPUT_   = { css: '#lastname'  }
    EMAIL_INPUT        = { css: '#email' }
    PASSWORD_INPUT     = { css: '#passwd' }
    ADDRESS_INPUT      = { css: '#address1' }
    CITY_INPUT         = { css: '#city' }
    STATE_INPUT        = { css: '#id_state > option:nth-child(8)' }
    POSTAL_CODE_INPUT  = { css: '#postcode' }
    COUNTRY_INPUT      = { css: '#id_country > option:nth-child(2)' }
    MOBILE_PHONE_INPUT = { css: '#phone_mobile' }
    REGISTER_BUTTON    = { css: '#submitAccount' }
    SUCCESFUL_REGISTRATION = { css: '#center_column > p'}
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def typeFirstName(first_name)
        sleep 5
        browser.find_element(FIRST_NAME_INPUT).clear
        browser.find_element(FIRST_NAME_INPUT).send_keys(first_name)
        browser.find_element(FIRST_NAME_INPUT_).clear
        browser.find_element(FIRST_NAME_INPUT_).send_keys(first_name)
    end

    def typeLastName(last_name)
        browser.find_element(LAST_NAME_INPUT).clear
        browser.find_element(LAST_NAME_INPUT).send_keys(last_name)
        browser.find_element(LAST_NAME_INPUT_).clear
        browser.find_element(LAST_NAME_INPUT_).send_keys(last_name)
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

    def selectState
        browser.find_element(STATE_INPUT).click
    end

    def typePostalCode(postal_code)
        browser.find_element(POSTAL_CODE_INPUT).clear
        browser.find_element(POSTAL_CODE_INPUT).send_keys(postal_code)
    end

    def selectCountry
        browser.find_element(COUNTRY_INPUT).click
    end

    def typeMobilePhone(m_phone)
        browser.find_element(MOBILE_PHONE_INPUT).clear
        browser.find_element(MOBILE_PHONE_INPUT).send_keys(m_phone)
    end

    def clickCreateAccount
        browser.find_element(REGISTER_BUTTON).click
    end

    def checkSuccessfullRegistration
        browser.find_element(SUCCESFUL_REGISTRATION).text.include? 'Welcome to your account'
    end

end