Feature: select issues and ratings for a news article  

    As a curious user on the listing articles page of a representative
    So that I can add a news article for a representative
    I want to click on the add news article button

    Background: the edit news article page exists and is working

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

        And I am on the edit news articles page
        Then 5 empty input boxes should exist
    
    Scenario: viewing the input boxes
        Given I am on the Edit News Article Page
        Then I should see empty input boxes 
        And I should see "Title:" 
        And I should see "Link" 
        And I should see "Description" 
        And I should see "Representative" 
        And I should see "Rating" 
        And I should see "Issue"

    Scenario: clicking on a representative
        Given I am on the Edit News Article Page
        And I click on "Representative"
        Then I should see a drop down form 
        And I should see "Gavin Newsom" 
        And I should see "Donald J. Trump" 
        And I should see "Mike Pence" 
        And I should see "Dan Sullivan" 
        And I should see "Mike Dunleavy " 

    Scenario: clicking on a rating
        Given I am on the Edit News Article Page
        And I click on "Rating"
        Then I should see a drop down form  
        And I should see "1" 
        And I should see "2" 
        And I should see "3" 
        And I should see "4" 
        And I should see "5"

    Scenario: clicking on an issue
        Given I am on the Edit News Article Page
        And I click on "Issue"
        Then I should see a drop down form 
        And I should see "Free Speech" 
        And I should see "Gun Control" 
        And I should see "Unemployment" 
        And I should see "Border Security" 
        And I should not see "Gavin Newsom"
        And I should not see "2"
    