*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Input Personal Data Wrong
    Click Element  //*[@id="id_gender1"]
    Input Text  //*[@id="customer_firstname"]  68
    Input Text  //*[@id="customer_lastname"]  56
    Input Password  //*[@id="passwd"]  asdf

    Select From List By Index  days  1
    Select From List By Index  months  1
    Select From List By Index  years  8

    BuiltIn.Sleep  3s

Input Personal Data Wrong2
    Click Element  //*[@id="id_gender1"]
    Input Text  //*[@id="customer_firstname"]  Maria3
    Input Text  //*[@id="customer_lastname"]  Gutierrez5
    Input Password  //*[@id="passwd"]  asdfg

    Select From List By Index  days  1
    Select From List By Index  months  1
    Select From List By Index  years  8

    BuiltIn.Sleep  3s

Input Personal Data
    Click Element  //*[@id="id_gender1"]
    Input Text  //*[@id="customer_firstname"]  Maria
    Input Text  //*[@id="customer_lastname"]  Gutierrez
    Input Password  //*[@id="passwd"]  asdfg

    Select From List By Index  days  1
    Select From List By Index  months  1
    Select From List By Index  years  8

    BuiltIn.Sleep  3s

Input Address Data Wrong
    Clear Element Text  //*[@id="firstname"]
    Input Text  //*[@id="company"]  Pivotree
    Input Text  //*[@id="address1"]  Jamaica 46
    Input Text  //*[@id="city"]  Valencia

    Select From List By Index  id_state  3

    Input Text  //*[@id="postcode"]  46020

    Select From List By Index  id_country  1

    Input Text  //*[@id="other"]  Buenas tardes caballeros
    Input Text  //*[@id="phone"]  967898989
    Input Text  //*[@id="phone_mobile"]  967121212
    Clear Element Text  //*[@id="alias"]
    Input Text  //*[@id="alias"]  Mi casa

    Click Button  //*[@id="submitAccount"]

    Page Should Contain  firstname is required
    Page Should Contain  lastname is invalid
    Page Should Contain  passwd is invalid
    BuiltIn.Sleep  3s

Input Address Data
    Input Text  //*[@id="company"]  Pivotree
    Input Text  //*[@id="address1"]  Jamaica 46
    Input Text  //*[@id="city"]  Valencia

    Select From List By Index  id_state  3

    Input Text  //*[@id="postcode"]  46020

    Select From List By Index  id_country  1

    Input Text  //*[@id="other"]  Buenas tardes caballeros
    Input Text  //*[@id="phone"]  967898989
    Input Text  //*[@id="phone_mobile"]  967121212
    Clear Element Text  //*[@id="alias"]
    Input Text  //*[@id="alias"]  Mi casa

    Click Button  //*[@id="submitAccount"]

    Page Should Contain  firstname is invalid
    Page Should Contain  lastname is invalid

    BuiltIn.Sleep  3s

Input Address Data2
    Input Text  //*[@id="company"]  Pivotree
    Input Text  //*[@id="address1"]  Jamaica 46
    Input Text  //*[@id="city"]  Valencia

    Select From List By Index  id_state  3

    Input Text  //*[@id="postcode"]  46020

    Select From List By Index  id_country  1

    Input Text  //*[@id="other"]  Buenas tardes caballeros
    Input Text  //*[@id="phone"]  967898989
    Input Text  //*[@id="phone_mobile"]  967121212
    Clear Element Text  //*[@id="alias"]
    Input Text  //*[@id="alias"]  Mi casa

    Click Button  //*[@id="submitAccount"]

    BuiltIn.Sleep  3s