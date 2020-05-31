*** Settings ***
Documentation    Testing 'My Profile' Section
Library  SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/OlybetApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${LOGIN_PAGE} =     https://www.olybet.lt/user/profile
${BROWSER} =        chrome
${USERNAME} =       lauzhikas@gmail.com
${PASSWORD} =       OBEH7l2QyX6y
${ACCOUNT} =        306920

*** Test Cases ***
User should be able to login to page
    [Documentation]  This is checking if the user can login into his account page
    [Tags]  Smoke
    OlybetApp.Log into user account page


User should be able to change contact information
    [Documentation]    This is checking if the user can change City and Residential address in Contact information
    [Tags]  Smoke
    OlybetApp.Log into user account page
    OlybetApp.Change Contact Information


User should be able to change communication settings
    [Documentation]    This is checking if the user can change the New and Promotions checkbox item options
    [Tags]  Current
    OlybetApp.Log into user account page
    OlybetApp.Change Communication settings




