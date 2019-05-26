*** Settings ***

*** Variables ***
#####################################################################################################################
# BEST PRACTICE - Move locators to variables so its centrally located, avoids redundancy when locators repeat and   #
# renders the log messages with a better readability                                                                #                                                                                                                   #
#####################################################################################################################

${m_SIGNIN_HEADING}     xpath://*[@id="authportal-main-section"]/div[2]/div/div/form/div/div/div/h1
${m_SIGNIN_TEXT}        Sign in
${m_EMAIL_INPUT}        id:ap_email
${m_PASSWORD_INPUT}     id:ap_password
${m_SUBMIT_BTN}         id:signInSubmit

${m_HOVER_AREA}          xpath://*[@id="nav-link-accountList"]/span[2]/span

${m_SIGNOUT_LINK}       xpath://*[@id="nav-item-signout"]

*** Keywords ***

m_Wait_For_SignIn_To_Load()
    #Log     po_Login.m_Wait_For_SignIn_To_Load() ; Arguments :
    page should contain element  ${m_EMAIL_INPUT}
    element text should be      ${m_SIGNIN_HEADING}     ${m_SIGNIN_TEXT}

m_Login_With_Valid_Credentials()
    [Arguments]  ${l_Login_User}   ${l_Password}

    #Log     po_Login.m_Login_With_Valid_Credentials() ; Arguments =   ${l_Login_User}   ${l_Password}
    m_Wait_For_SignIn_To_Load()
    m_Fill_Email_Input()     ${l_Login_User}
    m_Fill_Password_Input()  ${l_Password}
    m_Click_Submit_Btn()

m_Fill_Email_Input()
    [Arguments]  ${l_Login_User}
    #Log     po_Login.m_Fill_Password_Input() ; Arguments :   ${l_Login_User}
    click element  ${m_EMAIL_INPUT}
    input text  ${m_EMAIL_INPUT}  ${l_Login_User}

m_Fill_Password_Input()
    [Arguments]  ${l_Password}
    Log  po_Login.m_Fill_Password_Input() ; l_Password : ${l_Password}
    input text  ${m_PASSWORD_INPUT}  ${l_Password}

m_Click_Submit_Btn()
    Log  po_Login.m_Click_Submit_Btn()
    click button    ${m_SUBMIT_BTN}

m_Logout_From_Amazon()
    Log  po_Login.m_Logout_From_Amazon()

    #wait until element is visible  ${m_MENU_ITEM}
    ####mouse over   ${m_MENU_ITEM}
    ####Sleep  3s

    #select from list by label  ${m_SIGNOUT_LINK}    Sign Out

    #mouse down  ${m_SIGNOUT_LINK}


    #click element  ${m_SIGNOUT_LINK}

    #select from list by label  ${m_SIGNOUT_LINK}
    #Scroll Element Into View  ${m_SIGNOUT_LINK}
    #select from list by label  ${m_SIGNOUT_LINK}    Sign Out


    #wait until element is visible   ${m_SIGNOUT_LINK}
    #####click link  ${m_SIGNOUT_LINK}
    #####Sleep  5s

    #mouse up  ${m_SIGNOUT_LINK}

    wait until page contains element  ${m_HOVER_AREA}
    scroll element into view  ${m_HOVER_AREA}
    scroll element into view  ${m_SIGNOUT_LINK}
    Click Link  ${m_SIGNOUT_LINK}

   # wait until page does not contain element  ${m_MENU_ITEM}  30s