*** Settings ***
Documentation  Choosing Product From Digikala
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Search For Books And Magazines
    [Arguments]   ${Magazine selection}  ${Cover Type}  ${Filter}    ${Magazine}

    Wait Until Element Is Visible  //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div
    Mouse Over  //*[@id="base_layout_desktop_fixed_header"]/header/nav/div[1]/div[1]/div[1]/div
    Mouse Over  //a[@href="/main/book-and-media/"]
    Press Keys  //a[@href="/main/book-and-media/"]  [Return]
    Sleep  5
    BuiltIn.Run Keyword And Ignore Error  Scroll Element Into View  //img[@alt="مجلات، نقشه و نشانگر کتاب"]
    BuiltIn.Run Keyword And Ignore Error  Click Element  //img[@alt="مجلات، نقشه و نشانگر کتاب"]
    Wait Until Element Is Visible  //img[@alt="مجلات"]
    Press Keys  //img[@alt="مجلات"]  [Return]
    Wait Until Element Is Enabled   ${Magazine selection}
    Press Keys  ${Magazine selection}  [Return]
    Sleep  3
    Execute JavaScript    window.scrollTo(0, 3000)
    Sleep  1
    Wait Until Element Is Enabled  ${Cover Type}
    Sleep  1
    Click Element  ${Cover Type}
    Sleep  1
    BuiltIn.Run Keyword And Ignore Error  Select Frame  //*[@id="plpLayoutContainer"]/section[2]/div/div/div[1]/div[10]/div[2]
    Sleep  2
    BuiltIn.Run Keyword And Ignore Error  Scroll Element Into View   ${Filter}
    Sleep  2
    Click Element  ${Filter}
    Unselect Frame
    Wait Until Element Is Enabled  ${Magazine}
    Click Element  ${Magazine}
    Switch Window  new
    Page Should Contain  کاغذی



















