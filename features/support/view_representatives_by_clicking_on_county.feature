Feature: view representatives by clicking on county 

    As a curious user on the maps
    So that I can quickly search for representatives based on location
    I want to click on a county to see the associated representatives

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

    Scenario: clicking on a county
        Given I am on the National Map
        And I click on "Alaska, AK"
        When I click on "North Slope Borough, AK"
        Then I should see "Kevin Meyer" with the title "Lieutenant Governor of Alaska"
        And I should see "Dan Sullivan" with the title "U.S. Senator"
        And I should not see "Gavin Newsom" with the title "Governor of California"
