@javascript

Feature: RSC creates a staffing companies
    As a RSC,
    In order to create a new company,
    I would like to access the dashboard, click on the “staffing companies” button and fill in the company name.

    Background: 
        Given the following staffing companies exists
            | name        | email           |
            | Company 1   | company1@me.com |
            | Company 2   | company2@me.com |

    Scenario: RSC can successfully add new companies
        Given I am on the landing page
        Then I should see "RSC Dashboard"
        And I click on "Staffing Companies" within the "#sidebar" section
        And I should see "Company 1"
        Then I click on "Add new company"
        And I fill in "Name" with "Company 3"
        And I fill in "Email" with "company3@rsc.com"
        And I click on "Add Company"
        Then I should see "Company 3"

    Scenario: RSC cannot add companies if it already exists
        Given I am on the landing page
        And I click on "Staffing Companies" within the "#sidebar" section
        Then I click on "Add new company"
        And I fill in "Name" with "Company 4"
        And I fill in "Email" with "company2@me.com"
        And I click on "Add Company"
        Then I should not see "Company 4"