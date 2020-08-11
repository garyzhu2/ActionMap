Feature: display representative's profile page by clicking on their name from their news article page

    As a curious user on a representative's news article listing
    So that I can quickly find more details on a representative
    I want to click on represenative's name to see their profile details

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

    Scenario: clicking on the news article page
        When I click on the "News Articles" of "Donald J. Trump"
        When I click on the text of "Donald J. Trump"
        Then I should be on the representative's profile page
        And I should see his office/title is "President of the United States"
        And I should see his address is "1600 Pennsylvania Avenue Northwest Washington DC"
        And I should see his Zip is "20500"
        And I should see his political party is "Republican"
        And I should see his OCD ID is "ocd-division/country:us"