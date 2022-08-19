Dir[File.join(File.dirname(__FILE__), "../../lib/pages/*/*_page.rb")].each { |file| require file }

module PageObjects   

  require_relative '../../lib/pages/cadastro/login'
  require_relative '../../lib/pages/cadastro/profile_change'
  require_relative '../../lib/pages/checkout/new_trip'

  def buserLoginPage
  @buserLoginPage ||= BuserLoginPage.new
  end  

  def buserProfileChange
  @buserProfileChange ||= BuserProfileChange.new
  end

  def buserNewTrip
  @buserNewTrip ||= BuserNewTrip.new
  end

end