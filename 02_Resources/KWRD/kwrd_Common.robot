*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot              # Required to access ${BROWSER} Suite variable

*** Variables ***

*** Keywords ***

Suite Start
   [Arguments]  ${l_START_URL}  ${l_BROWSER}

    Log  kwrd_Common.Suite Start l_START_URL : ${l_START_URL} ; l_BROWSER : ${l_BROWSER}
    open browser  about:blank   ${l_BROWSER}         # Get browser variable from resource file
    go to  ${l_START_URL}
    #open browser    ${g_START_URL}  ${g_BROWSER}    # Get url, browser variable by passing to this keyword file
    maximize browser window

Suite End
    Log  kwrd_Common.Suite End
    sleep  3s
    #close browser

Begin Test
    Log  kwrd_Common.Begin Test

End Test
    Log  kwrd_Common.End Test