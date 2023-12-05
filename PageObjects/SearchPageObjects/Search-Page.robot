*** Settings ***
Resource        ../Base/Base1.robot
Variables       Search-locators.yaml

*** Keywords ***
Click Search Label On Home Screen
    Wait Until Element Is Visible    ${search-label}
    Click Element    ${search-label}

Input Valid Flight Number On Search Page 
    [Arguments]        ${validFlightNumber}
    Wait Until Element Is Visible    ${search-input}
    Input Text    ${search-input}        ${validFlightNumber}

Input Invalid Flight Number On Search Page 
    [Arguments]        ${invalidFlightNumber}
    Wait Until Element Is Visible    ${search-input}
    Input Text    ${search-input}        ${invalidFlightNumber}

Click Searcg Button On Search page
    Click Element    ${search-button}
