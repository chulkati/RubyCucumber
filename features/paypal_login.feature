Feature: Login Paypal
   Scenario Outline: Login to paypal website wrong password
    Given I am on paypal website
    When I enter <username> and <password>
     Then I validate the heading shows as "Send money to friends and family."
     Then I should validate the link for favorite shops is "http://WWW.paypal.com/us/webapps/about-paypal-product"
     #and I should see the image of paypal sites accepting in newyork

    #Then I should see the error message


    Examples:
      | username                          | password |
      |asish79@gmail.com                  | abriti2012|
      |user 2                              |tttttt|
     Scenario Outline: Login to paypal website wrong password
    Given I am on paypal website
    When I enter <username> and <password>
       And I click the Login button
       And I click setting button
       And I click the add address plus button
       And I select the Iowa State from the dropdown list
       And I make the address primary by selecting the chkbox

       Examples:
         | username                          | password |
         |asish79@gmail.com                  | jul123|

   Scenario Outline: Login to paypal website correct password
    Given I am on paypal website
    When I enter <username> and <password>
    And I click the Login button
    And I click setting button
     And I click the upgrade to a business account link
     And I select the existing account radio button
     Examples:
       | username                          | password |
       |asish79@gmail.com                  | abriti2012|

