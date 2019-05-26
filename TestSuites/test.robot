*** Settings ***
Documentation                               This is a basic test
Library                                     Selenium2Library


*** Variables ***


*** Test Cases ***
User can open home page
    [Documentation]                         As a user I can open the home page and see the tagline

    open browser                            https://github.com/yiaoping    firefox
    wait until page contains                Create your own GitHub profile
    close browser



*** Keywords ***