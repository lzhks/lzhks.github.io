*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKBOX1} =  xpath=/html/body/div[15]/div[2]/div[3]/div/div[1]/div[3]/div/div[1]/table/tbody/tr[1]/td[2]/div/label
${CHECKBOX2} =  xpath=/html/body/div[15]/div[2]/div[3]/div/div[1]/div[3]/div/div[1]/table/tbody/tr[2]/td[3]/div/label
${CHECKBOX3} =  xpath=/html/body/div[15]/div[2]/div[3]/div/div[1]/div[3]/div/div[1]/table/tbody/tr[3]/td[3]/div/label

*** Keywords ***
Load
    click link    Communication settings

Verify Page Loaded
    wait until page contains    News and promotions

Change Communication Settings
    wait until page contains element    ${CHECKBOX1}
    click element    ${CHECKBOX1}
    click element    ${CHECKBOX2}
    click element    ${CHECKBOX3}

Verify Changes
    checkbox should be selected    ${CHECKBOX1}
    checkbox should be selected    ${CHECKBOX2}
    checkbox should be selected    ${CHECKBOX3}

Save
    click button    Save

Clear Communication Settings
    unselect checkbox    ${CHECKBOX1}
    unselect checkbox    ${CHECKBOX2}
    unselect checkbox    ${CHECKBOX3}

Verify Clear Changes
    checkbox should not be selected    ${CHECKBOX1}
    checkbox should not be selected    ${CHECKBOX2}
    checkbox should not be selected    ${CHECKBOX3}

Verify Save Successfull
    wait until page contains element    css=#form-messages > div > i
