*** Settings ***
Library  SeleniumLibrary

Resource  ../variables.robot

*** Variables ***


*** Keywords ***
m_GotoURL()
    go to  ${START_URL}

m_WaitForPageToLoad()
    sleep  3s   # this causes  delay of 3 secs
    wait until page contains  Your Amazon.com               # Ensure page is loaded fully for the script
