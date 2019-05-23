*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
m_CheckProductAddedToCart()
    wait until page contains  Added to Cart     # Ensure the code sees the text "Added to Cart" for success



m_Proceed To Checkout()
    wait until element is visible  xpath://*[@id="hlb-ptc-btn"]/span
    click element  xpath://*[@id="hlb-ptc-btn"]/span        # Click the "Proceed to Checkout' button

    wait until page contains element    id:siNoCoverage-announce
    click button  id:siNoCoverage-announce      # Click the 'No Thanks ' button
