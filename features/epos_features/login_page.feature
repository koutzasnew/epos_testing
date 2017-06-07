Feature: login page tests
  In order to use the site
  As a user
  I want to be sure I see the home page

#  Scenario: Find the link for login
#    Given I am on the "http://localhost/epos/src/users/" page
#    When I click on Σύνδεση μέσω του cas.ru.aegean.gr
#    Then I should see "CASino" in a link
#    And I should be in url "https://cas.ru.aegean.gr/login?service=http%3A%2F%2Flocalhost%2Fepos%2Fsrc%2Fusers%2F"

  Scenario: View home page
    Given I am on the "http://localhost/epos/src/users/" page
    Then I should see "Σύνδεση μέσω του cas.ru.aegean.gr" in a link
    And I should see the Χρησιμοποιώντας τον παραπάνω σύνδεσμο, θα μεταβείτε στη σελίδα cas.ru.aegean.gr, στη φόρμα της οποίας μπορείτε να εισάγετε το όνομα χρήστη και τον κωδικό πρόσβασης του προσωπικού σας λογαριασμού. Αν έχετε ήδη συνδεθεί στη σελίδα cas.ru.aegean.gr, δε θα χρειαστεί να εισάγετε τα προσωπικά σας στοιχεία εκ νέου.
#    Then I should see the Χρησιμοποιώντας τον παραπάνω σύνδεσμο, θα μεταβείτε στη σελίδα cas.ru.aegean.gr, στη φόρμα της οποίας μπορείτε να εισάγετε το όνομα χρήστη και τον κωδικό πρόσβασης του προσωπικού σας λογαριασμού. Αν έχετε ήδη συνδεθεί στη σελίδα cas.ru.aegean.gr, δε θα χρειαστεί να εισάγετε τα προσωπικά σας στοιχεία εκ νέου.

  Scenario: Find heading on the users login page
    Given I am on the "http://localhost/epos/src/users/" page
    Then I should see header image header div img
  # an mia frash prin th metavlhth yparxei oloklhrh se mia megalyterh frash
  # px "I should see" kai "I should see the", tote isws xtypaei

  Scenario: Find the link to the page
    Given I am on the "http://localhost/epos/src/users/" page
    Then I should see "Μονάδα Πληροφορικής - Ειδικός Λογαριασμός Έρευνας" in a link