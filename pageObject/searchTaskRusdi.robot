*** Settings ***
Resource         base.robot
Variables        page-rusdi.yaml


*** Keywords ***
Click Sign In button on Homepage
    Click Element         ${sign-in-button}

Input Valid Username
    [Arguments]           ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text            ${username-input}       ${username}

Input Valid Password
    [Arguments]           ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text            ${password-input}       ${password}

Click Sign In button on Login Page
    Click Element         ${user-start-signin}

Click Button Search
       Click Element         ${search-button}

Search Booking ID
    [Arguments]           ${valid-bookingId}
    Wait Until Element Is Visible    ${valid-bookingId-input}
    Input Text            ${valid-bookingId-input}        ${valid-bookingId}

Click Button Search bookingId
    Click Element        ${click-button-search}

Check bookingId is Valid
       Page Should Contain Text    Departed