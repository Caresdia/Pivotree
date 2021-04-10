*** Settings ***
Library  SeleniumLibrary
Documentation  Basic Search Functionality

*** Keywords ***

Add one unit
    Click Element  //*[@id="cart_quantity_up_1_1_0_480679"]
    BuiltIn.Sleep  5s

Remove one unit
    Click Element  //*[@id="cart_quantity_down_1_1_0_480679"]
    BuiltIn.Sleep  5s

Remove one item
    Click Element  //*[@id="1_1_0_480679"]
    BuiltIn.Sleep  5s

Continue Checkout
    Click Element  //*[@id="center_column"]/p[2]/a[1]
    BuiltIn.Sleep  5s

Change Direction
    Click Element  //*[@id="uniform-addressesAreEquals"]
    BuiltIn.Sleep  5s
    Click Element  //*[@id="address_invoice_form"]/a
    BuiltIn.Sleep  5s

    Input Text  //*[@id="address1"]  Peru 28
    Input Text  //*[@id="address2"]  3ºC
    Input Text  //*[@id="city"]  Barcelona

    Select From List By Index  id_state  13

    Input Text  //*[@id="postcode"]  02600

    Select From List By Index  id_country  0

    Input Text  //*[@id="other"]  Buenas tardes caballeros
    Input Text  //*[@id="phone"]  960345123
    Input Text  //*[@id="phone_mobile"]  654786945
    Clear Element Text  //*[@id="alias"]
    Input Text  //*[@id="alias"]  Mi casa de verano

    Click Button  //*[@id="submitAddress"]
    BuiltIn.Sleep  3s

Update Direction
    Click Element  //*[@id="address_delivery"]/li[9]/a
    Clear Element Text  //*[@id="address1"]
    Input Text  //*[@id="address1"]  Madrid 28
    Clear Element Text  //*[@id="postcode"]
    Input Text  //*[@id="postcode"]  26018

    Click Button  //*[@id="submitAddress"]
    BuiltIn.Sleep  3s

Add Commentary
    Input Text  //*[@id="ordermsg"]/textarea  Lo quisiera envuelto para regalo, por favor
    BuiltIn.Sleep  3s
    Click Element  //*[@id="center_column"]/form/p/button
    BuiltIn.Sleep  3s

Shipping Delivery
    Click Element  //*[@id="cgv"]
    BuiltIn.Sleep  3s
    Click Element  //*[@id="form"]/p/button
    BuiltIn.Sleep  3s

Payment Method
    Click Element  //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    BuiltIn.Sleep  3s
    Click Element  //*[@id="cart_navigation"]/button
    BuiltIn.Sleep  3s

GetPDF
    Click Element  //*[@id="center_column"]/p/a
    BuiltIn.Sleep  3s
    Click Element  //*[@id="order-list"]/tbody/tr[1]/td[7]/a[1]
    BuiltIn.Sleep  5s
    Click Element  //*[@id="block-order-detail"]/div[2]/p[3]/a
    BuiltIn.Sleep  5s

