*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Add Item to shopping cart
    Mouse Over  //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
    BuiltIn.Sleep  3s
    Mouse Down  //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
    Click Element  //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
    BuiltIn.Sleep  3s

    Click Element  //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span
    BuiltIn.Sleep  3s

Add Item to shopping cart2
    Mouse Over  //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[1]/img
    BuiltIn.Sleep  3s
    Mouse Down  //*[@id="homefeatured"]/li[6]/div/div[2]/div[2]/a[1]
    Click Element  //*[@id="homefeatured"]/li[6]/div/div[2]/div[2]/a[1]
    BuiltIn.Sleep  3s

    Click Element  //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a
    BuiltIn.Sleep  3s