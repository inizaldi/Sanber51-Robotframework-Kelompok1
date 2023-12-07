*** Settings ***
Resource        ../PageObjects/Base/Base1.robot
Resource        ../PageObjects/HomePageObjects/Home-page.robot
Resource        ../PageObjects/LoginPageObjects/Login-Page.robot


*** Test Cases ***
Login Valid Credential
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page       ${valid-username}
    Input Password On Login page     ${valid-password}
    Click Sign In Button On Login page   

login Invalid Credential
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page              ${invalid-username}
    Input Password On Login page              ${invalid-password}
    Click Sign In Button On Login page