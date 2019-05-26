*** Settings ***
Documentation           Second Fortinet website test
Library                 Selenium2Library
Test Setup              Load Browser and Page
Test Teardown           Teardown


*** Variables ***
${url}              https://google.com
${browser}          firefox
${timeout}          5



*** Test Cases ***
Tc_001_Delsea Regional Case Study
    [Documentation]             Case Study for Delsea Regional link
    [Tags]                      Resources       Case Studies

    Select Product Tab
    Click Email Security Button
    Accept Cookies
    Click Case Studies


*** Keywords ***
Load Browser and Page
    Open Browser                        ${url}          ${browser}
    Input text                          name=q          fortinet
    Press Keys                          name=q          ENTER
    Set Browser Implicit Wait           ${timeout}
    Click Element                       //H3[@class='LC20lb'][text()='Fortinet | Deliver Secure Digital Transformation']
    Set Browser Implicit Wait           ${timeout}

Select Product Tab
    Mouse Over                          //A[@href='/products.html'][text()='Products']

Click Email Security Button
    Set Browser Implicit Wait           ${timeout}
    Click Element                       (//A[@href='/products/email-security.html'][text()='Email Security'][text()='Email Security'])[1]
    Set Browser Implicit Wait           ${timeout}
    Page Should Contain                 FortiMail: Secure Email Gateway
    Set Browser Implicit Wait           ${timeout}

Accept Cookies
    Click Element                       id=cookiescript_accept
    Set Browser Implicit Wait           ${timeout}
    Click Element                       (//SPAN[text()='Resources'][text()='Resources'])[1]
    Set Browser Implicit Wait           ${timeout}

Click Case Studies
    Click Element                       //BUTTON[@class='vertical-tab-selector aa-forti-products-tab'][text()='Case Studies']
    Set Browser Implicit Wait           ${timeout}
    Click Element                       (//DIV[@class='resource tall match-height resource-feature-box'])[3]
    Set Browser Implicit Wait           ${timeout}
    Page Should Contain                 Delsea Regional School District is a public school

Teardown
    Close Browser
    Log                         Test Complete



