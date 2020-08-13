Feature: adding news article with the correct features

    As an engaged user on the news article listing
    So that I can add details to my new news article 
    I want to be able to access a Representative, Issue, and Rating drop down

    Background: representatives of Alaska have been added to database

        Given the following representative exist:
            | Name              | Office                              |
            | Donald J. Trump   | President of the United States      |
            | Mike Pence        | Vice President of the United States |
            | Dan Sullivan      | U.S. Senator                        |
            | Lisa Murkowski    | U.S. Senator                        |
            | Don Young         | U.S. Representative                 |
            | Mike Dunleavy     | Governor of Alaska                  |
            | Kevin Meyer       | Lieutenant Governor of Alaska       |
            | Susan M. Carney   | AK Supreme Court Justice            |
            | Craig Stowers     | AK Supreme Court Justice            |
            | Peter J. Maassen  | AK Supreme Court Justice            |
            | Daniel E. Winfree | AK Supreme Court Justice            |
            | Joel H. Bolger    | AK Supreme Court Justice            |

        And I am on the Alaska representative search result page
        Then 12 seed representatives movies should exist

    Scenario: clicking on the drop down
        Given I am on the Edit news article page
        And I enter "COVID-19" in the "Title:" field
        And I enter "google.com" in the "Link:" field
        And I enter "quarantine news" in the "Description:" field
        And I select "Donald J. Trump" from "Representative:"
        And I select "Social Security and Medicare" from "Issues:"
        And I select "5" from "Raings:"
        Then I should see "News item was successfully created."
