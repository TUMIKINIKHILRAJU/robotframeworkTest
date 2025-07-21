*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py
Library    Collections

*** Keywords ***

Get Payment Info
    ${Payment Information}=     GetText     ${payment_info}
    Log     ${Payment Information}
    Log to Console   ${Payment Information}
    Element should contain      //div[text()='Payment Information:']/following::div[1]        SauceCard

Click on Finish
    click element       ${click_on_finish}