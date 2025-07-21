*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py
Library    Collections
*** Keywords ***

Click on Add to Cart
    click element       ${add_to_cart}

Click on Cart Image
    Wait Until Element Is Enabled    ${click_on_cart}
    click element       ${click_on_cart}

