*** Settings ***

*** Variables ***

*** Keywords ***

m_WaitForSignInToLoad()
    page should contain element  id:ap_email
    element text should be  xpath://*[@id="authportal-main-section"]/div[2]/div/div/form/div/div/div/h1     Sign in

