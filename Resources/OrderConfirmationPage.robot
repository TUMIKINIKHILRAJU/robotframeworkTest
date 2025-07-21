*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py
Library    Collections

*** Keywords ***

Order Confirmation Info
    ${Order Confirmation}=     GetText     ${order_confirmation}
    Log     ${Order Confirmation}
    Log to Console   ${Order Confirmation}
    Should be Equal      ${Order Confirmation}