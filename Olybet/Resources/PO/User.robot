*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${INPUT_FIELD_CITY} =   css=#casino-scroll-starting-point-2 > div.panel-block.widget.dark-grey.no-top-margin.underline-style.with-tabs > div.tabs-content.container > div > form > div:nth-child(4) > div:nth-child(5) > div > input
${INPUT_FIELD_RESIDENTIAL_ADDRESS} =    css=#casino-scroll-starting-point-2 > div.panel-block.widget.dark-grey.no-top-margin.underline-style.with-tabs > div.tabs-content.container > div > form > div:nth-child(4) > div:nth-child(4) > div > input
${CITY} =   Vilnius
${RESIDENTIAL_ADDRESS} =    Gedimino pr. 9

*** Keywords ***
Verify Page Loaded
    wait until page contains    Contract № ${ACCOUNT}


Change Contact Information
    input text    ${INPUT_FIELD_CITY}    ${CITY}
    input text    ${INPUT_FIELD_RESIDENTIAL_ADDRESS}    ${RESIDENTIAL_ADDRESS}

Verify Contact Information
    sleep    3s
    element attribute value should be    ${INPUT_FIELD_CITY}  value    ${CITY}
    element attribute value should be    ${INPUT_FIELD_RESIDENTIAL_ADDRESS}  value    ${RESIDENTIAL_ADDRESS}

Clear Contact Information
    input text    ${INPUT_FIELD_CITY}    n/a
    input text    ${INPUT_FIELD_RESIDENTIAL_ADDRESS}    n/a

Verify Contact Information Clearing
    element attribute value should be    ${INPUT_FIELD_CITY}  value    n/a
    element attribute value should be    ${INPUT_FIELD_RESIDENTIAL_ADDRESS}  value    n/a

Save
    click button    css=#casino-scroll-starting-point-2 > div.panel-block.widget.dark-grey.no-top-margin.underline-style.with-tabs > div.tabs-content.container > div > form > div:nth-child(7) > div > button

