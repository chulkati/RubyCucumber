require 'pry'
Given(/^I am on paypal website$/) do
  $Browser.paypal_home_pg.load
  $Browser.paypal_home_pg.signin.click
end

When(/^I enter (.*?)and (.*?)$/) do |user, passwd|
  $Browser.paypal_home_pg.userid.set(user)
  $Browser.paypal_home_pg.next_button.click
  $Browser.paypal_home_pg.password.set(passwd)
sleep 5
end
And  (/^I click the Login button$/) do
$Browser.paypal_home_pg.login_button.click
end
And  (/^I click setting button$/) do
  $Browser.paypal_home_pg.setting_button.click
  sleep 3
end
When ("I click the add address plus button") do
  $Browser.paypal_home_pg.add_address_plus_button.click
  sleep 3
  end
  And(/^I select the Iowa State from the dropdown list$/) do
  $Browser.paypal_home_pg.state_dropdown.select("Iowa")
  end
    And(/^I make the address primary by selecting the chkbox$/) do
      $Browser.paypal_home_pg.mark_primary_chkbox.click
    end
  And (/^I click the upgrade to a business account link$/) do
    binding.pry
    $Browser.paypal_home_pg.upgrade_business_link.click
  end
 And (/^I select the existing account radio button$/) do
   $Browser.paypal_home_pg.existing_account_radio.click
 end


  Then (/^I validate the heading shows as "(.*?)"$/) do  |heading |
 # expect ($browser.paypal_home_pg.note.text).to eql (heading)
#end

  #Then  (/^I should see the note as "(.*?)"$/) do |heading |
   #expect ($browser.paypal_home_pg.note.text).to eql (heading)
 # end
   # Then (/^I should validate the link for favorite shops as "(.*?)"$/) do  |heading |
    end


