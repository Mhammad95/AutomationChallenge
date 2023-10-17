@LOGIN

Feature: User Login

  Scenario: Successful Login
    Given the user is on the login page
    When the user enters valid credentials:
      | Username | Password |
      | Test     | 12345678 |
    And clicks the "Login" button
    Then they should be redirected to the dashboard
    And they should see a welcome message
    And the user's name "Test" should be displayed

  Scenario: Failed Login (Invalid Credentials)
    Given the user is on the login page
    When the user enters invalid credentials:
      | Username   | Password   |
      | bad_user   | wrongpass  |
    And clicks the "Login" button
    Then they should see an error message
    And they should remain on the login page

  Scenario: Failed Login (Empty Fields)
    Given the user is on the login page
    When the user leaves the username and password fields empty
    And clicks the "Login" button
    Then they should see an error message
    And they should remain on the login page

