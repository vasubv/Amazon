*** Settings ***

*** Variables ***
#####################################################################################################################
# BEST PRACTICE - Move locators to variables so its centrally located, avoids redundancy when locators repeat and   #
# renders the log messages with a better readability                                                                #                                                                                                                   #
#####################################################################################################################

${m_SIGNIN_HEADING}     xpath://*[@id="authportal-main-section"]/div[2]/div/div/form/div/div/div/h1
${m_SIGNIN_TEXT}        Sign in
${m_EMAIL_INPUT}        id:ap_email

*** Keywords ***

m_WaitForSignInToLoad()
    page should contain element  ${m_EMAIL_INPUT}
    element text should be      ${m_SIGNIN_HEADING}     ${m_SIGNIN_TEXT}

