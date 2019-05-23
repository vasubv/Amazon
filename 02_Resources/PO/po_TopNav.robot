*** Settings ***
Resource  ../variables.robot

*** Variables ***
# Locator Variables
${m_TOPNAV_SEARCH_BOX}      id:twotabsearchtextbox
${m_SEARCH_BUTTON}          class:nav-input

*** Keywords ***
m_SearchProduct()
    input text      ${m_TOPNAV_SEARCH_BOX}    ${g_SEARCH_ITEM}    # Enter search text "Ferari 458"
    click button    ${m_SEARCH_BUTTON}                          # Click the Search button

