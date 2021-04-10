*** Settings ***
Library  SeleniumLibrary
Documentation  Basic Search Functionality

*** Keywords ***

Introduce Email Address Wrong
    BuiltIn.Sleep  3s
    Input Text  //*[@id="email_create"]  42
    Click Button  //*[@id="SubmitCreate"]
    BuiltIn.Sleep  3s
    Page Should Contain  Invalid email address

Introduce Email Address Wrong2
    BuiltIn.Sleep  3s
    Input Text  //*[@id="email_create"]  prueba42@hotmail.com
    Click Button  //*[@id="SubmitCreate"]
    BuiltIn.Sleep  3s
    Page Should Contain  An account using this email address has already been registered

Introduce Email Address
    Input Text  //*[@id="email_create"]  prueba277@hotmail.com
    Click Button  //*[@id="SubmitCreate"]
    BuiltIn.Sleep  3s

Login Wrong
    BuiltIn.Sleep  3s
    Input Text  //*[@id="email"]  prueba42
    Input Text  //*[@id="passwd"]  42
    Click Button  //*[@id="SubmitLogin"]
    BuiltIn.Sleep  3s
    Page Should Contain  Invalid email address

Login Wrong2
    BuiltIn.Sleep  3s
    Input Text  //*[@id="email"]  prueba277@hotmail.com
    Input Text  //*[@id="passwd"]  42
    Click Button  //*[@id="SubmitLogin"]
    BuiltIn.Sleep  3s
    Page Should Contain  Invalid password

Login
    Input Text  //*[@id="email"]  prueba277@hotmail.com
    Input Text  //*[@id="passwd"]  picaporte
    Click Button  //*[@id="SubmitLogin"]
    BuiltIn.Sleep  3s

LoginB
    Input Text  //*[@id="email"]  prueba43@hotmail.com
    Input Text  //*[@id="passwd"]  holahola
    Click Button  //*[@id="SubmitLogin"]
    BuiltIn.Sleep  3s



