*** Settings ***
#Library  SeleniumLibrary

Resource    ../PO/po_Login.robot
Resource    ../PO/po_LandingPage.robot
Resource    ../PO/po_SearchResults.robot
Resource    ../PO/po_TopNav.robot
Resource    ../PO/po_Product.robot
Resource    ../PO/po_Cart.robot

*** Keywords ***
Login To Amazon
    [Arguments]  ${l_Login_User}  ${l_Password}

    Log  kwrd_Amazon.Login To Amazon ; l_Login_User : ${l_Login_User} ; l_Password : ${l_Password}
    po_Login.m_Login_With_Valid_Credentials()  ${l_Login_User}  ${l_Password}

Login To Amazon On Startup
    [Arguments]  ${l_Login_User}  ${l_Password}

    Log  kwrd_Amazon.Login To Amazon ; l_Login_User : ${l_Login_User} ; l_Password : ${l_Password}
    po_LandingPage.m_Click_Signin_On_Startup()
    po_Login.m_Login_With_Valid_Credentials()     ${l_Login_User}  ${l_Password}
    kwrd_Amazon.Logout From Amazon

Logout From Amazon
    Log  kwrd_Amazon.Logout From Amazon
    po_Login.m_Logout_From_Amazon()

Search For Product
    Log  kwrd_Amazon.Search For Product
    po_LandingPage.m_GotoURL()                  # 1. Open a browser
    po_LandingPage.m_WaitForPageToLoad()        # 2. Ensure Landing page is fully loaded
    po_TopNav.m_SearchProduct()                 # 3. Search for the product "Ferrar 458"
    po_SearchResults.m_WaitForSearchToFinish()  # 4. Ensure Search is complete

Select A Product
    Log  kwrd_Amazon.Select A Product
    po_SearchResults.m_SelectFromSearchResults()
    po_Product.m_WaitForProductDetailsToLoad()

Add That Product To Cart
    Log  kwrd_Amazon.Add That Product To Cart
    po_Product.m_AddToCart()
    po_Cart.m_CheckProductAddedToCart()

Proceed To Checkout
    Log  kwrd_Amazon.Proceed To Checkout
    po_Cart.m_Proceed To Checkout()
    po_Login.m_Wait_For_SignIn_To_Load()


