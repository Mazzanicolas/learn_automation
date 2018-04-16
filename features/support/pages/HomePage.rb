class HomePage
    #Agrupar en alguna lista o mapa
    #Search
    SEARCH_INPUT       = { css: '' }
    SEARCH_BUTTON      = { css: '' }
    #Accounts
    SIGNIN_BUTTON      = { css: '' }
    #NavBar
    NAV_WOMEN_BUTTON   = { css: '' }
    NAV_DRESSES_BUTTON = { css: '' }
    NAV_TSHIRTS_BUTTON = { css: '' }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def click_on(element)
        browser.find_element(element).click
    end 

    def loaded?
        browser.title.include?('My Store')#Esto se tiene que cambiar, no puede quedar asi.
    end

end