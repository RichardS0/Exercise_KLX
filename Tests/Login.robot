*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables *** 

*** Test Cases ***
Verify Successful Login to saucedemo

    [tags]  Smoke
    Open Browser  http://automationexercise.com  Chrome
    Go To    https://automationexercise.com/products
    Wait Until Element Is Visible    search_product   
    Input Text  id:search_product  men tshirt
    Click Element  id:submit_search
    Scroll Element Into View   xpath=/html/body/section[2]/div[1]/div/div[2]/div/div[3]/div/div[1]/div[1]/a
    Wait Until Element Is Visible    2
    Click Element  id:2
    Input Text  id:search_product Soft Stretch Jeans
    Click Element  id:submit_search
    Scroll Element Into View    id=33
    Wait Until Element Is Visible    33
    Click Element  id:33
    Go To    https://automationexercise.com/view_cart
    Wait Until Element Is Visible    "#product-33 > td.cart_description"
    Wait Until Element Is Visible    "#product-2 > td.cart_description"

*** Keywords ***
Scroll To Element
    [Arguments]  ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})
