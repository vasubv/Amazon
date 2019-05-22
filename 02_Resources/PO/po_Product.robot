*** Settings ***

*** Variables ***

*** Keywords ***
m_WaitForProductDetailsToLoad()
    sleep  5s                                       # Give a small wait
    #wait until page contains     Back to results    # Wait till the code sees the text "Back To Results"
    wait until page contains element  id:breadcrumb-back-link


m_AddToCart()
    click element  id:add-to-cart-button               # Click the 'Add to Cart button
