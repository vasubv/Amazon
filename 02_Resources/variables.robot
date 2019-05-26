*** Settings ***
Library  SeleniumLibrary

*** Variables ***


${g_START_URL}          http://amazon.com
${g_SEARCH_ITEM}        Ferrari 458
${g_BROWSER}            chrome
${g_ABOUT_BLANK}        about:blank
${g_LOGIN_USER}         vasu.bv.71@gmail.com
${g_PASSWORD}           vasu.bv.71

@{ARRAY}       Hello, My   name is     Vasudevan           # List Variable / Single dimension array