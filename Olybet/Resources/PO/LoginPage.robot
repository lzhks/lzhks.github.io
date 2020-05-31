*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_BUTTON} =   css=#form-login > div:nth-child(2) > button

*** Keywords ***
Load
    go to    ${LOGIN_PAGE}

Verify Page Loaded
    wait until page contains    Login with username

Login
    input text    user_login_username   ${USERNAME}
    input password    user_login_password    ${PASSWORD}
    click button    ${LOGIN_BUTTON}