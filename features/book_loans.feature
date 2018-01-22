Scenario: Placing a successful book loan where my extension is not HIGHER than 4 times
    Given the following book loans are open
        | title                              | code |   start_date	  |   due_date |   times_extended
        | Programming Phoenix 1.3            | A    | 09-01-2018      | 16-01-2018 |    0
        | Secrets of the JavaScript ninja    | A    | 19-12-2017      | 16-01-2018 |    4
        | The Little Prince                  | A    | 07-08-2017      | 21-08-2017 |    1
		| The Return of the King             | C    | 03-06-2017      | 24-06-2017 |    0
		| The Two Towers                     | C    | 12-06-2017      | 03-06-2017 |    0
		| The Fellowship of the Ring         | C    | 15-06-2017      | 05-06-2017 |    0
    And I navigate to the Borrow Page
    And I want to extend loan on "Programming Phoenix 1.3 "
    When I click on Extend action
    Then I should get a message "extension accepted"

    Scenario: Placing an unsuccessful book loan where my extension is HIGHER than 4 times
    Given the following book loans are open
        | title                              | code |   start_date	  |   due_date |   times_extended
        | Programming Phoenix 1.3            | A    | 09-01-2018      | 16-01-2018 |    0
        | Secrets of the JavaScript ninja    | A    | 19-12-2017      | 16-01-2018 |    4
        | The Little Prince                  | A    | 07-08-2017      | 21-08-2017 |    1
		| The Return of the King             | C    | 03-06-2017      | 24-06-2017 |    0
		| The Two Towers                     | C    | 12-06-2017      | 03-06-2017 |    0
		| The Fellowship of the Ring         | C    | 15-06-2017      | 05-06-2017 |    0
    And I navigate to the Borrow Page
    And I want to extend loan on "Secrets of the JavaScript ninja"
    When I click on Extend action
    Then I should get a message "extension rejected"