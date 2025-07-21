
*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/PageLocators.py
Library    Collections

*** Keywords ***
Open my browser
    [Arguments]        ${url}          ${browser}
    open browser        ${url}          ${browser}
    Maximize browser window

Verify Card titles in the Product Page
   @{expectedList} =    Create List   Sauce Labs Backpack   Sauce Labs Bike Light   Sauce Labs Bolt T-Shirt     Sauce Labs Fleece Jacket    Sauce Labs Onesie   Test.allTheThings() T-Shirt (Red)
   ${elements} =  Get WebElements   //div[@class='inventory_item']//following::div[@class='inventory_item_label']/a/div
   @{actualList} =   Create List
   FOR  ${element}  IN      @{elements}
        Log   ${element.text}
        Log to Console    ${element.text}
        Append To List    ${actualList}     ${element.text}
   END
   Lists Should Be Equal   ${expectedList}    ${actualList}

Select the Product
    [Documentation]     Select a specific product
    [arguments]     ${Product}
    ${elements} =  Get WebElements   //div[@class='inventory_item']//following::div[@class='inventory_item_label']/a/div
    ${index}=   Set Variable    1
    FOR  ${element}  IN      @{elements}
           Exit For Loop If      '${Product}' == '${element.text}'
           ${index}=  Evaluate   ${index} + 1
           Log     ${index}
     END
    Click Element   xpath:(//div[@class='inventory_item_name'])[${index}]

