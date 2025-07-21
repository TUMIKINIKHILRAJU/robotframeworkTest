*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py
Library    Collections

*** Keywords ***
Verify Product Description
    Element Text Should Be    //div[@class='inventory_item_desc']     carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.

Clik on checkout
    click element   ${click_on_checkout}

