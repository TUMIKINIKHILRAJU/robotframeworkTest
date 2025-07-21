*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/ProductPageKeywords.robot
Resource    ../Resources/AddToCartPage.robot
Resource    ../Resources/ProductDescriptionPage.robot
Resource    ../Resources/CheckoutPage.robot
Resource    ../Resources/PaymentInfoPage.robot
Resource    ../Resources/OrderConfirmationPage.robot
Suite Setup     Login to swaglabs

*** Variables ***
${url}          https://www.saucedemo.com/v1/
${browser}      chrome
${user name}    standard_user
${password}     secret_sauce
${Product}      Sauce Labs Backpack
${firstName}    Nikhil
${lastName}     Raju
${ZipCode}      500066

*** Test Cases ***
Find products
    [Documentation]     This test cases explains to about all products in page
    [Tags]      Smoke       Regression
    Verify Card titles in the Product Page
    Select the Product  ${Product}
     sleep  5

Add Product to Cart
    [Tags]      Smoke
    Click on Add to Cart
    Click on Cart Image
    sleep   3

Checkout Product
    Verify Product Description
    Clik on checkout

Checkout Page Details
    Enter firstname       ${firstName}
    Enter lastname        ${lastName}
    Enter pincode         ${ZipCode}
    click on continue

Payment Information
    Get Payment Info
    Click on Finish

Confirmation Info
    Order Confirmation Info

*** Keywords ***
Login to swaglabs
    LoginKeywords.Open my browser     ${url}      ${browser}
    Enter username      ${user name}
    Enter password      ${password}
    click login
    sleep   2
    verify title
    Log     Succesfully Done
    Log to Console  Succesfully Done