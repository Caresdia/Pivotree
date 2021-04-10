*** Settings ***
Documentation  Basic Search Functionality
Resource  ../Resources/PageObjects/BasicFunctions.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
Resource  ../Resources/PageObjects/SignPage.robot
Resource  ../Resources/PageObjects/CreateAccount.robot

Test Setup  BasicFunctions.Start TestCase
Test Teardown  BasicFunctions.Finish TestCase

*** Variables ***

*** Test Cases ***

Verificamos que accede a Sign in
    [Documentation]  Registrar Usuario

    HeaderPage.Click on Sign in

    SignPage.Introduce Email Address Wrong
    SignPage.Introduce Email Address Wrong2
    SignPage.Introduce Email Address

    CreateAccount.Input Personal Data Wrong
    CreateAccount.Input Address Data Wrong

    CreateAccount.Input Personal Data Wrong2
    CreateAccount.Input Address Data

    CreateAccount.Input Personal Data
    CreateAccount.Input Address Data2

    HeaderPage.Click on Sign out

    SignPage.Login Wrong
    SignPage.Login Wrong2
    SignPage.Login


