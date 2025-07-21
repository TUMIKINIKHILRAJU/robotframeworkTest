*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py

*** Keywords ***
Open my browser
    [Arguments]        ${url}          ${browser}
    open browser        ${url}          ${browser}
    Maximize browser window

Enter username
    [Arguments]     ${username}
    input text      ${login_username}    ${username}

Enter password
    [Arguments]     ${password}
    input text      ${login_password}   ${password}

click login
    click button    ${login_button}
    #Run Keyword And Return	Alert Should be Present	    Alert Should be Present     ACCEPT
    TRY
        Alert Should be Present 	Change your password
        Sleep   2
    EXCEPT
        Log     Exception alert found
    END

Verify title
    title should be     Swag Labs
    
