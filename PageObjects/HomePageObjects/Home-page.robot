*** Settings ***
Resource        ../Base/Base1.robot
Variables        Home-locators.yaml

*** Keywords ***
Click Sign In Button On Home Screen
    Click Element    ${sign-in-button}
