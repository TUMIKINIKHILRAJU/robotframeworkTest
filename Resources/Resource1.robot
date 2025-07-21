
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.durgasoft.com/registration.asp
${name}     Nikhil
${url1}     https://www.google.com/
${url2}     https://testautomationpractice.blogspot.com/


*** Keywords ***
openmybrowser1
    open browser    ${url}      ${browser}

Closemybrowser1
    closebrowser
Registration Form Input Fields
    input text  id:name     ${name}
    input text  id:ph_no    9125556565
    input text  xpath://input[@id='email']    raju@gmail.com
Registartion Form Radio Button
    select radio button     current[]    Student
    #click element   //input[@value='Student']
    sleep   5

TestAutomation Steps
    [Arguments]             ${inputfield}
    input text  id:name     ${inputfield}
    sleep   3