*** Settings ***
#Library  SeleniumLibrary

Resource    ../PO/po_LandingPage.robot
Resource    ../PO/po_SearchResults.robot
Resource    ../PO/po_TopNav.robot
Resource    ../PO/po_Product.robot
Resource    ../PO/po_Cart.robot
Resource    ../PO/po_SignIn.robot

*** Keywords ***
Search For Product
    po_LandingPage.m_GotoURL()                  # 1. Open a browser
    po_LandingPage.m_WaitForPageToLoad()        # 2. Ensure Landing page is fully loaded
    po_TopNav.m_SearchProduct()                 # 3. Search for the product "Ferrar 458"
    po_SearchResults.m_WaitForSearchToFinish()  # 4. Ensure Search is complete

Select A Product
    po_SearchResults.m_SelectFromSearchResults()
    po_Product.m_WaitForProductDetailsToLoad()

Add That Product To Cart
    po_Product.m_AddToCart()
    po_Cart.m_CheckProductAddedToCart()

Proceed To Checkout
    po_Cart.m_Proceed To Checkout()
    po_SignIn.m_WaitForSignInToLoad()


