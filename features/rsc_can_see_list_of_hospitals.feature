@javascript
Feature: RSC Can See List of Hospitals
    As an RSC,
    In order to know what hospitals I have associations with,
    I would like to be able to see a list of hospitals in my region.

    Background: 
        Given the following hospitals exists
            | name        | 
            | Hospital 1  | 
            | Hospital 2  |

    Scenario: See list of hospitals
        Given I am on the hospital page
        Then I should see "Hospital 1" within the "list-item" section