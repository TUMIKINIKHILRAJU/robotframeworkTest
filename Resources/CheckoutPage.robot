*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py

*** Keywords ***

Enter firstname
    [Arguments]     ${firstName}
    input text      ${enter_first_name}    ${firstName}

Enter lastname
    [Arguments]     ${lastName}
    input text      ${enter_last_name}   ${lastName}

Enter pincode
    [Arguments]     ${pincode}
    input text      ${enter_zip_code}     ${pincode}

click on continue
    click button    ${click_on_continue}
