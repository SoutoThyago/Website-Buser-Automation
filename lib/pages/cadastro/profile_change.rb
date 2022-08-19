require_relative '../../../features/page_bases/page_base.rb'

class BuserProfileChange < PageBase

    element :buttonProfile, :xpath, '/html/body/div[1]/div/div/nav[1]/div/div[2]/div/div/button/span'
    element :buttonEditProfile, :xpath, '/html/body/div[1]/div/div/nav[1]/div/div[2]/div/div[2]/div[1]/div/a[1]'
    element :buttonEditName, :xpath, '/html/body/div[1]/div/div/div[1]/div/div[1]/div/button'
    element :buttonEditEmail, :xpath, '/html/body/div[1]/div/div/div[1]/div/div[2]/div/button'
    element :buttonEditPhone, :xpath, '/html/body/div[1]/div/div/div[1]/div/div[3]/div/button'
    element :buttonSave, :xpath, '/html/body/div[1]/div/div/div[1]/div/button'

    element :fieldName, :xpath, '/html/body/div[1]/div/div/div[1]/div/div/div/input'
    element :fieldEmail, :xpath, '/html/body/div[1]/div/div/div[1]/div/div/div/input'
    element :fieldPhone, :xpath, '/html/body/div[1]/div/div/div[1]/div/div/div/input'    

    def clickProfile
        wait_until_buttonProfile_visible wait: 5
        click :buttonProfile
    end

    def clickEditProfile
        wait_until_buttonEditProfile_visible wait: 5
        click :buttonEditProfile
    end

    def clickEditName
        wait_until_buttonEditName_visible wait: 5
        click :buttonEditName
    end

    def clickEditEmail
        wait_until_buttonEditEmail_visible wait: 5
        click :buttonEditEmail
    end

    def clickEditPhone
        wait_until_buttonEditPhone_visible wait: 5
        click :buttonEditPhone
    end

    def setName name
        send_keys :fieldName, name
    end

    def setEmail email
        send_keys :fieldEmail, email
    end

    def setPhone phone
        send_keys :fieldPhone, phone
    end

    def clickSave
        wait_until_buttonSave_visible wait: 5
        click :buttonSave
    end

end