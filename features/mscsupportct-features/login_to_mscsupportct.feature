Feature: login success
  In order to use the site
  As a user
  I want to be sure I can login

  @javascript
  Scenario Outline: Find the link for login
    Given I am on the "http://msc-support.ct.aegean.gr/php/login.php" page
    #When I fill "login_username" field with value "ikoutz"
    #And I fill "login_password" field with value "k0utz@s29!!78"
    When I fill "login_username" field with value "<username>"
    And I fill "login_password" field with value "<password>"
    And I click on Σύνδεση
    Then I should be in path "/php/start.php"
    And I should see the Καλως Ήλθατε στην Διεπαφή Υποστήριξης Σύγχρονων Συνεδριών
    #When I hit on selection field with id "footer"
  #/epos/src/users/main.php #Κεντρικός Πίνακας WebPos
    Examples:
      | username | password |
      | ikoutz | k0utz@s29!!78 |
      | mscsupportct | T7^%xlyUIeFw |
