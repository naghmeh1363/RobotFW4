*** Settings ***
Documentation  Open Page
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.digikala.com/
${browser}  Chrome
${speed}  1 second
${timeout}  60 second

*** Keywords ***

Start TestCase
    Set Selenium Speed  ${speed}
    Set Selenium Timeout  ${timeout}
    Open Browser  ${url}  ${browser}
    Maximize Browser Window