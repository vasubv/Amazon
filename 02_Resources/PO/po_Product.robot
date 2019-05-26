*** Settings ***

*** Variables ***
# Locator *** Variables ***
${m_BACK_TO_RESULTS_TEXT}       id:breadcrumb-back-link
${m_ADD_TO_CART_BTN}            id:add-to-cart-button

*** Keywords ***
m_WaitForProductDetailsToLoad()
    log     po_Product.m_WaitForProductDetailsToLoad()
    sleep  5s                                                       # Give a small wait
    wait until page contains element    ${m_BACK_TO_RESULTS_TEXT}   # Wait till the code sees the text "Back To Results"


m_AddToCart()
    log     po_Product.m_AddToCart()
    click element   ${m_ADD_TO_CART_BTN}                            # Click the 'Add to Cart button
