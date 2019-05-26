*** Settings ***
Documentation                               Second Fortinet website test
Library                                     Selenium2Library


*** Variables ***
${url}              https://google.com
${browser}          firefox

*** Test Cases ***

Delsea Regional Case Study
    [Documentation]     Case Study for Delsea Regional link
    [Tags]              Resources       Case studies
    Open Browser        ${url}          ${browser}
    Input text          name=q          fortinet
    Press Keys          name=q          ENTER
    Set Browser Implicit Wait       5
    Click Element   //H3[@class='LC20lb'][text()='Fortinet | Deliver Secure Digital Transformation']
    Mouse Over      //A[@href='/products.html'][text()='Products']
    Set Browser Implicit Wait       2
    Click Element       (//A[@href='/products/email-security.html'][text()='Email Security'][text()='Email Security'])[1]
    Page Should Contain     FortiMail: Secure Email Gateway
    Set Browser Implicit Wait       2
    Click Element   id=cookiescript_accept
    Click Element   (//SPAN[text()='Resources'][text()='Resources'])[1]
    Set Browser Implicit Wait       2
    Click Element   //BUTTON[@class='vertical-tab-selector aa-forti-products-tab'][text()='Case Studies']
    Sleep           1
    Click Element   (//DIV[@class='resource tall match-height resource-feature-box'])[3]
    Page Should Contain     Delsea Regional School District is a public school
    Close Browser
    Log             Test Complete


