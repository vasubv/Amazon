*** Settings ***
Resource  ../variables.robot

*** Variables ***

*** Keywords ***
m_SearchProduct()
    input text  id:twotabsearchtextbox    ${SEARCH_ITEM}       # Enter search text "Ferari 458"
    click button    class:nav-input                         # Click the Search button
