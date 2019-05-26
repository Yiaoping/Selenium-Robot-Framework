*** Settings ***
Documentation       This is to test Fortinet's Website
Library             Selenium2Library
Suite Setup         Log  Starting the web functionality tests
Suite Teardown      Log  Completed the web functionality tests

Test Setup          Load Browser and Page
Test Teardown       Run Keywords    Teardown1

*** Variables ***
${url}          https://google.com
${browser}      firefox
${timeout}      5
@{results product}      Comprehensive, High-Performance Web Application Security     Stop advanced email threats and prevent data loss

*** Test Cases ***
Products_WebApplicationFirewall
    [Documentation]         Products- WebApp button
    [Tags]                  Products

    Select Product Tab
    Click Element           //A[@href='/products/web-application-firewall/fortiweb.html'][text()='Web Application Firewall']
    Page Should Contain     @{results product}[0]


Products_EmailSecurity
    [Documentation]         Products- Email Security button
    [Tags]                  Products    Email

    Select Product Tab
    Click Element           (//A[@href='/products/email-security.html'][text()='Email Security'][text()='Email Security'])[1]
    Page Should Contain     @{results product}[1]



Solutions_SecureNetwork
    [Documentation]         Solutions- Secure Network Link button
    [Tags]                  Solutions   Network

    Select Solutions Tab
    Click Element           //A[@href='/solutions/small-business/connected-utm.html'][text()='Secure Network']
    Page Should Contain     A Secure Network Solution for Small Businesses



Solutions_SecureProductivity
    [Documentation]         Solutions- Secure Productivity button
    [Tags]                  Solutions

    Select Solutions Tab
    Click Element           //A[@href='/solutions/small-business/secure-productivity.html'][text()='Secure Productivity']
    Page Should Contain     Secure Productivity for Cloud Services



*** Keywords ***

Load Browser and Page
    Open Browser                ${url}  ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait   ${timeout}
    Input text                  name=q          fortinet
    Press Keys                  name = q        ENTER
    Set Browser Implicit Wait   ${timeout}s


Select Product Tab
    Click Element   //H3[@class='LC20lb'][text()='Fortinet | Deliver Secure Digital Transformation']
    Set Browser Implicit Wait   ${timeout}
    Mouse Over      //A[@href='/products.html'][text()='Products']
    Set Browser Implicit Wait   ${timeout}

Select Solutions Tab
    Click Element   //H3[@class='LC20lb'][text()='Fortinet | Deliver Secure Digital Transformation']
    Set Browser Implicit Wait   ${timeout}
    Mouse Over      //A[@href='/solutions.html'][text()='Solutions']
    Set Browser Implicit Wait   ${timeout}


Teardown1
    Close Browser
    Log             Completed Test Case