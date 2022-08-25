require_relative '../../../features/page_bases/page_base.rb'

class BuserPaymentCreditCard < PageBase

    element :fieldPaymentCreditCard, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/section/button[1]'    
    
    element :fieldCreditCardNumber, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[1]/div/input'
                                             
    element :fieldCreditCardValidity, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[2]/div[1]/div/input'
    element :fieldCreditCardCVV, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[2]/div[2]/div/input'
    element :fieldCreditCardName, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[3]/div/input'
    element :fieldCreditCardCPF, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[4]/div[1]/div/input'
    element :fieldCreditCardCEP, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/div[4]/div[2]/div/input'    

    element :fieldCreditCardTimesFirst, :xpath, ''
    element :buttonAddCreditCard, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[2]/div/form/button' 
    element :buttonClosePaymentCreditCard, :xpath, '/html/body/div[1]/div/div/main/div/div/div[1]/div[3]/div/div[2]/div[2]/div[1]/button'                                                  

    def clickPaymentCreditCard
        wait_until_fieldPaymentCreditCard_visible wait: 5
        click :fieldPaymentCreditCard
    end

    def setCreditCardNumber numberCreditCard
        send_keys :fieldCreditCardNumber, numberCreditCard           
    end

    def setCreditCardValidity validityCreditCard
        send_keys :fieldCreditCardValidity, validityCreditCard            
    end

    def setCreditCardCVV cvvCreditCard
        send_keys :fieldCreditCardCVV, cvvCreditCard
    end

    def setCreditCardName nameCreditCard
        send_keys :fieldCreditCardName, nameCreditCard
    end

    def setCreditCardCPF cpfCreditCard
        send_keys :fieldCreditCardCPF, cpfCreditCard
    end
    
    def setCreditCardCEP cepCreditCard
        send_keys :fieldCreditCardCEP, cepCreditCard
    end

    def clickCreditCardTimes
        wait_until_fieldCreditCardTimes_visible wait: 5
        click :fieldCreditCardTimes
       
        wait_until_fieldCreditCardTimesFirst_visible wait: 5
        click :fieldCreditCardTimesFirst
    end

    def clickAddCreditCard
        wait_until_buttonAddCreditCard_visible wait: 5
        click :buttonAddCreditCard
    end

    def clickClosePaymentCreditCard
        wait_until_buttonClosePaymentCreditCard_visible wait: 5
        click :buttonClosePaymentCreditCard
    end

end