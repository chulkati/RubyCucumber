require_relative 'Base'
class Paypal_site < Base
  set_url ""
  set_url_matcher /www\.paypal(.*?)\.com/
  element :login_button, "#ul-btn"
  #element :login_button,"btn btn-small btn-secondary" #class
  element :signin, "a", :text => "Log In"
  #element :userid , "#email" # by id
  element :userid, "input.validateEmpty" #By Class

  #element :password, "input.validateEmpty" #By Class


  #element :userid , "#email"
  element :next_button, "#btnNext"
  element :password, "#password"
  element :login_button, "#btnLogin"
  #element :userid , :xpath," /html[1]/body[1]/div[1]/section[2]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[1]/input[1]"
  #element :next,"btnNext"
  #element :password, "#password"
  #element : password/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/input[1]
  #home page
  element :setting_button, "#header-settings"
  element :add_address_plus_button, "a[name='addAddress']"
  #dropdown
  element :state_dropdown, "div.selectDropdown"
  #checkbox
  element :mark_primary_chkbox, "label[for='primary']"
  #radio button
  element :upgrade_business_link, "a", :text => "Upgrade to a Business account"
  element :existing_account_radio, "label[for='existing_account']"
  element :new_account_radio, "label[for='new_account']"

end




