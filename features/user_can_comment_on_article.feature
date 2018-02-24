Feature: User can comment on article
  As a reader
  In order to make my voice heard
  I would like to be able to comment on articles_path

  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Faraz  |

  Scenario: User adds a comment
    Given I visit the site
    And I click on "A breaking news item"
    And I fill in "Comment" with "Lol, best thing ever!"
    And I fill in "Email" with "david.boll@me.com"
    And I click on "Create Comment"
    Then I should be on "A breaking news item" page
    And I shold see "Lol, best thing ever!"
    And I should see "david.boll@me.com"
