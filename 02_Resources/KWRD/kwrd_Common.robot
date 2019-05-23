*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot              # Required to access ${BROWSER} Suite variable

*** Variables ***

*** Keywords ***

Suite Start
    [Arguments]     ${url}   ${browser}
    # Open a browser and maximize in Chrome
    LOG     ${BROWSER}
    LOG     ${url}
    LOG     ${browser}

    #open browser  about:blank   ${BROWSER}     # Get browser variable from resource file
    open browser    ${url}  ${browser}          # Get url, browser variable by passing to this keyword file
    maximize browser window

    My Keyword - 1              # Invoke other keywords within this keyword file
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