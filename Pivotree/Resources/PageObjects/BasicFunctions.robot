*** Settings ***
Library  SeleniumLibrary
Resource  HeaderPage.robot
Resource  SignPage.robot

*** Keywords ***
Start TestCase
    Open Browser  http://automationpractice.com/index.php  chrome
    Maximize Browser Window

Start TestCase2
    Open Browser  http://automationpractice.com/index.php  chrome
    Maximize Browser Window
    HeaderPage.Click on Sign in
    BuiltIn.Sleep  3s
    SignPage.LoginB
    HeaderPage.Click on HomePage

Finish TestCase
    Close Browser