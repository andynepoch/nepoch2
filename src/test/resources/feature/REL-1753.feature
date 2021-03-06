@ST_26493
Feature: testing

@SC_107043
Scenario: Check that icon 'Unsubscribe' is present on panel 'Projects' on page 'Dashboard'
Given I am logged in Relime as PM/TM user
When I navigate to page 'Dashboard'
Then I see icon 'Unsubscribe' near appropriate project in panel 'Projects'
And I see tooltip "Unsubscribe me"

@SC_107044
Scenario: Check pop-up 'Unsubscribe me'
Given I am logged in Relime as PM/TM user
When I navigate to page 'Dashboard'
Then I see icon 'Unsubscribe' near appropriate project in panel 'Projects'
When I click icon 'Unsubscribe'
Then I see pop-up 'Unsubscribe me'
And I see label "Unsubscribe me"
And I see text "Are you sure you want to be unsubscribed from [Project name] project?"
And I see buttons 'Cancel' and 'OK'

@SC_107045
Scenario: Check behavior when user clicks OK button in pop-up 'Unsubscribe me'
Given I am logged in Relime as PM/TM user
When I navigate to page 'Dashboard'
Then I see icon 'Unsubscribe' near appropriate project in panel 'Projects'
When I click icon 'Unsubscribe'
Then I see pop-up 'Unsubscribe me'
When I click button 'OK'
Then I see that project disappears from tab 'My subscriptions'
And I see that project team mates are not displayed in panel 'Team'
And I see success notification "You have been unsubscribed from [Project name] project"