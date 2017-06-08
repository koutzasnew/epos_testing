Feature: login success
  In order to use the site
  As a user
  I want to be sure I can login

  @javascript
  Scenario Outline: Find the link for login
    Given session I am on the "http://msc-support.ct.aegean.gr/php/login.php" page
    When session I fill "login_username" field with value "<username>"
    And session I fill "login_password" field with value "<password>"
    And session I click on Σύνδεση
    Then session I should be in path "/php/start.php"
    And session I should see the Καλως Ήλθατε στην Διεπαφή Υποστήριξης Σύγχρονων Συνεδριών
    Examples:
      | username | password |
      | ikoutz | k0utz@s29!!78 |
#      | mscsupportct | T7^%xlyUIeFw |

  @javascript
  Scenario: I'll do whatever I want
    Given session I am on the "http://msc-support.ct.aegean.gr/php/start.php" page
    Then session I should see the Καλως Ήλθατε στην Διεπαφή Υποστήριξης Σύγχρονων Συνεδριών

#  @javascript
#  Scenario Outline: Find the link for login
#    Given I am on the "http://msc-support.ct.aegean.gr/php/login.php" page
#    When I fill "login_username" field with value "<username>"
#    And I fill "login_password" field with value "<password>"
#    And I click on Σύνδεση
#    Then I should be in path "/php/start.php"
#    And I should see the Καλως Ήλθατε στην Διεπαφή Υποστήριξης Σύγχρονων Συνεδριών
#    Examples:
#      | username | password |
#      | ikoutz | k0utz@s29!!78 |
##      | mscsupportct | T7^%xlyUIeFw |

  #### AYTO PAIZEI XWRIS LOGIN MONO ME SESSION, OPWS STA SXOLIASMENA PARAPANW ####
#  @javascript
#  Scenario: I'll do whatever I want
#    Given I am on the "http://msc-support.ct.aegean.gr/php/start.php" page
#    Then I should see the Καλως Ήλθατε στην Διεπαφή Υποστήριξης Σύγχρονων Συνεδριών
