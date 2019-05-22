*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.amazon.com/

*** Keywords ***

Suite Start
    # Open a browser and maximize in Chrome
    open browser  about:blank   ${Browser}
    maximize browser window
    My Keyword - 1
    My Keyword - 2

My Keyword - 1
    Log  Keyword - 1

My Keyword - 2
    Log  Keyword - 2

Suite End
    # Wait 3s and close browser
    sleep  3s
    #close browser

Begin Test
    Log  Begin Test

End Test
    Log  End Test