*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.amazon.com/

# Author : Arjun Vasu is in KPMG
*** Test Cases ***
TC #01 : User must sign in to checkout
    [Documentation]  This is a test case to open up the browser in ie
    [Tags]  Smoke
    # 1. Open the amazon link in chrome browser
    open browser  ${URL}    ${Browser}
    maximize browser window
    sleep  3s   # this causes  delay of 3 secs

    # 2. Search for items - Ferrari 458
    wait until page contains  Your Amazon.com               # Ensure page is loaded fully for the script
    input text  id:twotabsearchtextbox    Ferrari 458       # Enter search text "Ferari 58"
    click button    class:nav-input                         # Click the Search button
    wait until page contains  results for "Ferrari 458"     # Wait til search results fully load

    #click element   css:#search > div.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.s-right-column.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(4) > div.s-result-list.sg-row > div:nth-child(5) > div > div > div > div:nth-child(2) > div:nth-child(2) > div > div.a-section.a-spacing-none.a-spacing-top-small > h2 > a

    click element  xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[5]/div/div/div/div[2]/div[2]/div/div[1]/h2/a

Feature-1 Test
    log  Feature 1 log

    # Wait for 3 seconds and close
    sleep  3s
    close browser

*** Keywords ***
