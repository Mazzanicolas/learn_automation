class DressesPage
    #Agrupar en alguna lista o mapa
    #Search
    SEARCH_INPUT       = { id: 'search_query_top' }
    SEARCH_BUTTON      = { css: '#searchbox button' }
    QUICK_VIEW          = {css:   '.product_list .ajax_block_product:nth-of-type(1) .quick-view'       }

    FIRST_ITEM      = { css: '.product_list .ajax_block_product:nth-of-type(1) product_img_link' }

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end
    
    def clickFirstProduct()
        element = browser.find_element(QUICK_VIEW)
		name = driver.execute_script("arguments[0].style.visibility='hidden'" , element)
        driver.action.move_to(FIRST_ITEM,200,-200).click.perform
        #browser.find_element(FIRST_ITEM).click
    end

    def is_present?(search_result)
        browser.find_element(SELECTED_ITEM_TITLE).text.include? search_result
    end

end