*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.durgasoft.com/registration.asp


*** Keywords ***

opemynbrowser2
    open browser    ${url}      ${browser}

Closemybrowser2
    closebrowser

Enter user name
    [Arguments]         ${username}
    Input text          id:name         ${username}

Enter Phone number
    [Arguments]        ${phone}
    Input text          id:ph_no          ${phone}

Click on RadioButton
    click element       //input[@value='Student']

title validation
    title should be     DURGA SOFTWARE SOLUTIONS

prefered joining date
    [Arguments]     ${joining date}
    input text      id:date     ${joining date}
