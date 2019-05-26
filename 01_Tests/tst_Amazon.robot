*** Settings ***
Resource  ../02_Resources/KWRD/kwrd_Amazon.robot
Resource  ../02_Resources/KWRD/kwrd_Common.robot
Resource  ../02_Resources/variables.robot

# Set of actions to be performed before start and after execution of ALL test cases in this suite
Suite Setup     kwrd_Common.Suite Start     ${g_START_URL}  ${g_BROWSER}     # Pass url, browser to keyword
Suite Teardown  kwrd_Common.Suite End       # Wait 3s and close the browser

# Set of actions to be performed before start and after execution of each test case in this suite
Test Setup      kwrd_Common.Begin Test      # Open a browser in chrome browser
Test Teardown   kwrd_Common.End Test        # Wait 3s and close the browser

*** Variables ***

*** Test Cases ***
TC #01 : As a valid user, I'm able to "Login With Valid Credentials" on Startup
    [Documentation]  This test case ensures the user can login into the Amazon App at startup
    [Tags]  Smoke Test
    Log  tstAmazon.TC #01 : As a valid user, I'm able to "Login With Valid Credentials"
    kwrd_Amazon.Login To Amazon On Startup     ${g_LOGIN_USER}  ${g_PASSWORD}
    kwrd_Amazon.Logout From Amazon

TC #02 : As a User, I'm able to "Search For Products"
    [Documentation]  This is a test case for user to search a product - Ferrari 458
    [Tags]  Smoke Test

    Log  tstAmazon.TC #02 : As a User, I'm able to "Search For Products"
    kwrd_Amazon.Search For Product          # 1. Search for the Product - Ferrari 458

TC #03 : As a User, I'm able to "View A Product"
    [Documentation]  This is a TC to view the Product in search result
    [Tags]  Smoke Test

    Log  tstAmazon.TC #03 : As a User, I'm able to "View A Product"
    kwrd_Amazon.Search For Product          # 1. Search for the Product - Ferrari 458
    kwrd_Amazon.Select A Product            # 2. Select a product from the search results

TC #04 : As a User, I'm able to "Add A Product To Cart" & "Proceed To Checkout"
    [Documentation]  # This is a test case for user to search a product, select that product, add it to the cart
                     # and proceed to checkout

    [Tags]  Smoke Test

    log  tstAmazon.TC #04 : As a User, I'm able to "Add A Product To Cart" & "Proceed To Checkout"
    kwrd_Amazon.Search For Product          # 1. Search for the Product - Ferrari 458
    kwrd_Amazon.Select A Product            # 2. Select a product from the search results
    kwrd_Amazon.Add That Product To Cart    # 3. Add the selected product to shopping cart
    kwrd_Amazon.Proceed To Checkout         # 4. Proceed to checkout
    kwrd_Amazon.Login To Amazon  ${g_LOGIN_USER}  ${g_PASSWORD}             # 5. Sign in to amazon to checkout

TC #05 : Command Line
    [Documentation]  This is a test case for some important commands
    [Tags]  Command Line

    log     Command line to pass values to the global variables
    log     robot -d 02_Results -v SEARCH_ITEM:"Ferrari 458" -N "Amazon Shopping Cart" 01_Tests/Amazon.robot
    log     @{ARRAY}[0]
    log     @{ARRAY}[1]
    log     @{ARRAY}[2]