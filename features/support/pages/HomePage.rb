class HomePage
    #Agrupar en alguna lista o mapa
    #Search
    SEARCH_INPUT        = { id:    'search_query_top'  }
    SEARCH_BUTTON       = { css:   '#searchbox button' }
    
    #Accounts
    SIGNIN_BUTTON       = { css:   '.login' }
    #NavBar
    NAV_WOMEN_BUTTON    = { css:   '' }
    NAV_DRESSES_BUTTON  = { css: '.sf-menu > li > a[title = "Dresses"]' }
    NAV_TSHIRTS_BUTTON  = { css:   '' }

    CLICK_FIRST_ITEM    = {css:   '.product_list .ajax_block_product:nth-of-type(1) .product_img_link' }
    QUICK_VIEW          = {css:   '.product_list .ajax_block_product:nth-of-type(1) .quick-view'       }
    SELECTED_ITEM_TITLE = {xpath: '//h1[@itemprop = "name"]'                                           }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def searchDresses(search_query)#El nombre no deberia ser mas generico?
        browser.find_element(SEARCH_INPUT).clear
        browser.find_element(SEARCH_INPUT).send_keys search_query
        browser.find_element(SEARCH_BUTTON).click
    end    

    def goToDresses()
        browser.find_element(NAV_DRESSES_BUTTON).click#No le falta un .click?
    end

    def loaded?#Renombrar, es para ver si estas en el sitio que querias
        browser.title.include?('My Store')#Esto se tiene que cambiar, no puede quedar asi.
    end
    
    def clickQuickView()#Inconsistente con B
        browser.find_element(QUICK_VIEW).click
    end

    def clickFirstProduct()#B
        browser.find_element(CLICK_FIRST_ITEM).click
    end

    def is_present?(search_result)#Inconsistente con A
        browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
    end

    def clickSignIn()#B
        browser.find_element(SIGNIN_BUTTON).click

    def wait_for(seconds=5)     
        Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
    end

    def displayed?(locator)#A
        browser.find_element(locator).displayed?
        true
        rescue Selenium::WebDriver::Error::NoSuchElementError
            false
        end
    end
end