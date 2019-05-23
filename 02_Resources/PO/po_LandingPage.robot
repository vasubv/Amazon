*** Settings ***
# Include Libaries
Library  SeleniumLibrary

# Include files
Resource  ../variables.robot

*** Variables ***
# Locator Variables
${m_YOUR_AMAZON_COM}    Your Amazon.com

*** Keywords ***
m_GotoURL()
    go to  ${g_START_URL}

m_WaitForPageToLoad()
    sleep  3s   # this causes  delay of 3 secs
    wait until page contains        ${m_YOUR_AMAZON_COM}    # Ensure page is loaded fully for the script
