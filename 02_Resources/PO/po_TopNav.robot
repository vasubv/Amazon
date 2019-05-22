*** Settings ***

*** Variables ***

*** Keywords ***
m_SearchProduct()
    input text  id:twotabsearchtextbox    Ferrari 458       # Enter search text "Ferari 458"
    click button    class:nav-input                         # Click the Search button

