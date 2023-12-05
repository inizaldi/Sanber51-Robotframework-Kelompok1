*** Settings ***
Resource        ../PageObjects/Base/Base1.robot
Resource        ../PageObjects/HomePageObjects/Home-page.robot
Resource        ../PageObjects/LoginPageObjects/Login-Page.robot
Resource        ../PageObjects/BookingPageObjects/Booking-page.robot
Resource        ../PageObjects/SearchPageObjects/Search-Page.robot


*** Test Cases ***
Search Valid Flight Number
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page     ${valid-username}
    Input Password On Login page    ${valid-password}
    Click Button Sign In On Login page
    Click Search Label On Home Screen
    Input Valid Flight Number On Search Page     ${valid-flight-number}
    Click Searcg Button On Search page

Search Invalid Flight Number
    Open Flight Application
    Click Sign In Button On Home Screen
    Input Username On Login Page     ${valid-username}
    Input Password On Login page    ${valid-password}
    Click Button Sign In On Login page
    Click Search Label On Home Screen
    Input Invalid Flight Number On Search Page     ${invalid-flight-number}
    Click Searcg Button On Search page