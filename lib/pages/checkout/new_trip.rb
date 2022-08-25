require_relative '../../../features/page_bases/page_base.rb'

class BuserNewTrip < PageBase

    element :fieldOrigin, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[1]/div[1]/div/div/input'
    element :fieldDestiny, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[2]/div/div/div/input'
    element :fieldDateLeave, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[3]'
    element :fieldFirstOrigin, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[1]/div[2]/div/div/ul/div[1]/li'
    element :fieldFirstDestiny, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[2]/div[2]/div/div/ul/div[1]/li'
    element :fieldNewPassenger, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/button'
    element :fieldPassengername, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/div[1]/div/input'
    element :fieldPassengerrg, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/div[3]/div/input'
    element :fieldPassengercpf, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/div[4]/div/input'

    element :buttonNextMonth, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[3]/div[3]/div[2]/div/div[1]/div[1]/button[2]'
    element :buttonFirstDay, :xpath, '//div//button[@data-testid="1"]'    
    element :buttonSearch, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/button'
    element :buttonSelectTrip, :xpath, '/html/body/div[1]/div/div/div[1]/div[2]/div/div[2]/div/div[1]/div[1]/div/div/div[1]/div[5]/div/div[2]/div[2]/button'                                            
    element :buttonEditPassenger, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/ul/li[1]/button'
    element :buttonRemovePassenger, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/footer/button[1]'
    element :buttonAddPassenger, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/footer/button'        
    element :buttonFinishBuy, :xpath, '/html/body/div[1]/div/div/main/div/div/div[2]/button'

    element :radioPassenger, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[2]/div/div[2]/div[2]/div[2]/form/div[2]/div/div/div[1]'    
    element :radioAcceptTerms, :xpath, '//div[@class="ada-field ada-checkbox"]'                                       
                        
    def setOrigin origin
        send_keys :fieldOrigin, origin        
    end    

    def selectOrigin
        sleep 1          
        wait_until_fieldFirstOrigin_visible wait: 5
        click :fieldFirstOrigin
    end    

    def setDestiny destiny
        send_keys :fieldDestiny, destiny
    end    

    def selectDestiny
        sleep 1
        wait_until_fieldFirstDestiny_visible wait: 5
        click :fieldFirstDestiny
    end  

    def selectDateLeave
        wait_until_fieldDateLeave_visible wait: 5
        click :fieldDateLeave
    end  

    def clickNextMonth
        wait_until_buttonNextMonth_visible wait: 5
        click :buttonNextMonth
    end

    def searchTrip
        wait_until_buttonSearch_visible wait: 5
        click :buttonSearch
    end  

    def selectFirstDayOfMonth
        wait_until_buttonFirstDay_visible wait: 5        
        click :buttonFirstDay
    end

    def selectNewTrip
        wait_until_buttonSelectTrip_visible wait: 5
        click :buttonSelectTrip
    end

    def clickRemovePassenger
        if elemento_visivel? :buttonEditPassenger          
            click :buttonEditPassenger
            click :buttonRemovePassenger
        end
    end

    def clickNewPassenger
        wait_until_fieldNewPassenger_visible wait: 5
        click :fieldNewPassenger
    end

    def selectAdultPassenger        
        wait_until_radioPassenger_visible wait: 5
        click :radioPassenger
    end

    def setNamePassenger namepassenger
        send_keys :fieldPassengername, namepassenger
    end

    def setRGPassenger rgpassenger
        send_keys :fieldPassengerrg, rgpassenger
    end

    def setCPFPassenger cpfpassenger
        send_keys :fieldPassengercpf, cpfpassenger
    end

    def clickAddPassenger
        wait_until_buttonAddPassenger_visible wait: 5
        click :buttonAddPassenger
    end

    def clickAcceptTerms
        wait_until_radioAcceptTerms_visible wait: 5
        scroll_to :radioAcceptTerms
        click :radioAcceptTerms
    end

    def clickFinishBuy
        wait_until_buttonFinishBuy_visible wait: 5
        scroll_to :buttonFinishBuy
        click :buttonFinishBuy
    end
    
end