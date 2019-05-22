*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
m_CheckProductAddedToCart()
    wait until page contains  Added to Cart     # Ensure the code sees the text "Added to Cart" for success

m_Proceed To Checkout()
    wait until element is visible  xpath://*[@id="attach-sidesheet-checkout-button"]/span
    click element  xpath://*[@id="attach-sidesheet-checkout-button"]/span
