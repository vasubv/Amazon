*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
m_WaitForSearchToFinish()
    sleep  3s                                               # this causes  delay of 3 secs
    wait until page contains  results for "Ferrari 458"     # Wait till search results fully load

m_SelectFromSearchResults()
    #click element  xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div[2]/div[1]/div/div/span/a/div
    click element  xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div




