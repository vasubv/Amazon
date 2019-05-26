*** Settings ***
# Include Libaries
Library  SeleniumLibrary

# Include files
Resource  ../variables.robot

*** Variables ***
# Locator Variables
${m_YOUR_AMAZON_COM}    Your Amazon.com
${m_SIGN_IN}            xpath://*[@id="nav-signin-tooltip"]/a/span

*** Keywords ***
m_GotoURL()
    Log  po_LandingPage.m_GotoURL()
    go to  ${g_START_URL}

m_WaitForPageToLoad()
    log  po_LandingPage.m_WaitForPageToLoad()
    wait until page contains        ${m_YOUR_AMAZON_COM}    # Ensure page is loaded fully for the script

m_Click_Signin_On_Startup()
    log  m_Click_Signin_On_Startup ${m_SIGN_IN}
    wait until element is visible  ${m_SIGN_IN}             # Wait till Sign-in shows up
    click element  ${m_SIGN_IN}

