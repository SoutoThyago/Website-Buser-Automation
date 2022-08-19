require_relative '../../../features/page_bases/page_base.rb'

class BuserLoginPage < PageBase
                                           
    element :buttonLogin, :xpath, '/html/body/div[1]/div/div/nav[1]/div/div[2]/p'
    element :buttonContinue, :xpath, '/html/body/div[1]/div/div/div[1]/div/div/form/button'
    element :accept, :xpath, '/html/body/div[1]/div/div/div[3]/div/button'
    element :setEmail, :xpath, '/html/body/div[1]/div/div/div[1]/div/div/form/div/div/input'
    element :setPassword, :xpath, '/html/body/div[1]/div/div/div[1]/div/div[2]/form/div/div/input'
    element :login, :xpath, '/html/body/div[1]/div/div/div[1]/div/div[2]/form/button'
    element :search, :xpath, '/html/body/div[1]/div/div/nav[1]/div/div[2]/a[1]'
    element :origin, :xpath, '/html/body/div[1]/div/div/div[1]/header/div[2]/div/form/div[1]/div/div/div/input'

    def clickEnter
        wait_until_buttonLogin_visible wait: 5
        click :buttonLogin
    end    

    def clickContinue
        wait_until_buttonContinue_visible wait: 5
        click :buttonContinue
    end    

    def clicarAtualizar
        wait_until_botaoAtualizar_visible wait: 5
        click :botaoAtualizar
    end    

    def acceptCookies
        wait_until_accept_visible wait: 5
        click :accept
    end    

    def sendEmail email
        send_keys :setEmail, email
    end

    def sendPassword password
        send_keys :setPassword, password
    end

    def clickLogin
        wait_until_login_visible wait: 5
        click :login
    end       

    def clickSearch
        wait_until_search_visible wait: 5
        click :search
    end    

    def visibleElements
        wait_until_origin_visible wait: 5
        elemento_visivel? :origin
    end    
end