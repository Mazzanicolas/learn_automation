class HomePage
    #Agrupar en alguna lista o mapa
    #Search
    SEARCH_INPUT       = { id: 'search_query_top' }
    SEARCH_BUTTON      = { css: '#searchbox button' }
    
    #Accounts
    SIGNIN_BUTTON      = { css: '' }
    #NavBar
    NAV_WOMEN_BUTTON   = { css: '' }
    NAV_DRESSES_BUTTON = { xpath: '//ul[@class="submenu-container clearfix first-in-line-xs"] //a[@title = "Dresses"]' }
    NAV_TSHIRTS_BUTTON = { css: '' }

    CLICK_FIRST_ITEM = {css: '.product_list .ajax_block_product:nth-of-type(1) .product_img_link' }
    QUICK_VIEW         = {css: ".product_list .ajax_block_product:nth-of-type(1) .quick-view"}
    SELECTED_ITEM_TITLE = {xpath: '//h1[@itemprop = "name"]'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def searchDresses(search_query)
        browser.find_element(SEARCH_INPUT).clear
        browser.find_element(SEARCH_INPUT).send_keys search_query
        browser.find_element(SEARCH_BUTTON).click
    end    

    def loaded?
        browser.title.include?('My Store')#Esto se tiene que cambiar, no puede quedar asi.
    end
    
    def clickQuickView()
        browser.find_element(QUICK_VIEW).click
    end

    def clickFirstProduct()
        browser.find_element(CLICK_FIRST_ITEM).click
    end

    def search_result_present?(search_result)
        browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
    end

    def wait_for(seconds=5)
         Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
    end

    def displayed?(locator)
        browser.find_element(locator).displayed?
        true
        rescue Selenium::WebDriver::Error::NoSuchElementError
            false
    end
end