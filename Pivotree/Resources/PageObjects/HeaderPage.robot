*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Click on Sign in
    Click Element  xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a

Click on Contact us
    Click Element  xpath://*[@id="contact-link"]/a

Click on Sign Out
    Click Element  xpath://*[@id="header"]/div[2]/div/div/nav/div[2]/a

Click on HomePage
    Click Element  xpath://*[@id="header_logo"]/a/img

