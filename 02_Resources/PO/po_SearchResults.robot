*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# Locator *** Variables ***
${m_FIRST_IMAGE}                xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div[2]/div[1]/div/div/span/a/div
${m_RESULTS_FOR_FERRARI_TEXT}   results for "Ferrari 458"

#xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div

*** Keywords ***
m_WaitForSearchToFinish()
    log     po_SearchResults.m_SelectFromSearchResults()
    sleep  3s                                                   # this causes  delay of 3 secs
    wait until page contains    ${m_RESULTS_FOR_FERRARI_TEXT}   # Wait till search results fully load

m_SelectFromSearchResults()
    log     po_SearchResults.m_SelectFromSearchResults()
    click element       ${m_FIRST_IMAGE}                        # Click the first image displayed




