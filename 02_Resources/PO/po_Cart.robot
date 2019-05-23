*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Locator Variables
${m_ADDED_TO_CART_TEXT}         Added to Cart
${m_PROCEED_TO_CHECKOUT_BTN}    xpath://*[@id="hlb-ptc-btn"]/span
${m_NO_THANKS_BTN}              id:siNoCoverage-announce



*** Keywords ***
m_CheckProductAddedToCart()
    wait until page contains    ${m_ADDED_TO_CART_TEXT}                 # Code to see the text "Added to Cart"

m_Proceed To Checkout()
    wait until element is visible       ${m_PROCEED_TO_CHECKOUT_BTN}
    click element                       ${m_PROCEED_TO_CHECKOUT_BTN}    # Click the "Proceed to Checkout' button

    Sleep   3s
    wait until page contains element    ${m_NO_THANKS_BTN}
    click button                        ${m_NO_THANKS_BTN}              # Click the 'No Thanks ' button
