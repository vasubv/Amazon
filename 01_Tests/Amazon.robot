*** Settings ***
Resource  ../02_Resources/KWRD/kwrd_Amazon.robot
Resource  ../02_Resources/KWRD/kwrd_Common.robot

# Set of actions to be performed before start and after execution of ALL test cases in this suite
Suite Setup     kwrd_Common.Suite Start     # Open the amazon link in chrome browser
Suite Teardown  kwrd_Common.Suite End       # Wait 3s and close the browser

# Set of actions to be performed before start and after execution of each test case in this suite
Test Setup      kwrd_Common.Begin Test      # Open a browser in chrome browser
Test Teardown   kwrd_Common.End Test        # Wait 3s and close the browser

*** Variables ***

*** Test Cases ***
TC #01 : User Searches Product and checkout
    [Documentation]  This is a test case to open up the browser in ie

    [Tags]  Smoke

    kwrd_Amazon.Search For Product          # 1. Search for the Product - Ferrari 458

    kwrd_Amazon.Select A Product            # 2. Select a product from the search results

    kwrd_Amazon.Add That Product To Cart    # 3. Add the selected product to shopping cart

    kwrd_Amazon.Proceed To Checkout         # 4. Proceed to checkout

TC #02 : Logging some comments
    log  Log This is the last test
