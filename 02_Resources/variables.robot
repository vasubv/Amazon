*** Settings ***
Library  SeleniumLibrary

*** Variables ***


${START_URL}        http://amazon.com
#${START_URL}       Set Variable  http://amazon.com
${SEARCH_ITEM}      Ferrari 458
${BROWSER}          chrome
${ABOUT_BLANK}      about:blank


@{ARRAY}       Hello, My   name is     Vasudevan           # List Variable / Single dimension array