Feature: login success
  In order to use the site
  As a user
  I want to be sure I can login

  @javascript
  Scenario: Find the link for login
    Given I am on the "http://localhost/epos/src/users/" page
    When I click on Σύνδεση μέσω του cas.ru.aegean.gr
    Then I should see "CASino" in a link
    And I should be in url "https://cas.ru.aegean.gr/login?service=http%3A%2F%2Flocalhost%2Fepos%2Fsrc%2Fusers%2F"
    And I fill "username" field with value "ikoutz"
    And I fill "password" field with value "k0utz@s29!!78"
    When I click on Σύνδεση
    #Then I wait 5 seconds    #### ayto pithanon xreiazetai otan kaneis non-headless testing ####
    Then I should be in url "http://localhost/epos/src/users/main.php"
    And I should see the Επιλεγμένο ΠΜΣ:
    When I hit on selection field with id "sel_program"
    #select2-sel_program-a5-container #select2-sel_program-ko-container #form-control
    Then I select option "Αλλο (Χορηγίες)" from the search field with class "sel_program"
    When I click on Επιλογή
    And I click on Φοιτητές Προγράμματος
    Then There should be an element with class name "dataTable_wrapper"
