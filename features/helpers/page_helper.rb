Dir[File.join(File.dirname(__FILE__), "../../lib/pages/*/*_page.rb")].each { |file| require file }

module PageObjects   

  require_relative '../../lib/pages/cadastro/login'
  require_relative '../../lib/pages/cadastro/profile_change'
  require_relative '../../lib/pages/checkout/new_trip'
  require_relative '../../lib/pages/checkout/payment_credit_card'
  require_relative '../../features/helpers/windows_helper'

  def buserLoginPage
  @buserLoginPage ||= BuserLoginPage.new
  end  

  def buserProfileChange
  @buserProfileChange ||= BuserProfileChange.new
  end

  def buserNewTrip
  @buserNewTrip ||= BuserNewTrip.new
  end

  def buserPaymentCreditCard
  @buserPaymentCreditCard ||= BuserPaymentCreditCard.new
  end

  def windowsHelper
  @windowsHelper ||= WindowsHelper.new
  end

end