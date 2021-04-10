*** Settings ***
Documentation  Basic Search Functionality
Resource  ../Resources/PageObjects/BasicFunctions.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/ShoppingCart.robot
Resource  ../Resources/PageObjects/SignPage.robot

Test Setup  BasicFunctions.Start TestCase2
Test Teardown  BasicFunctions.Finish TestCase

*** Variables ***

*** Test Cases ***
Verificamos que accede a Sign in
    [Documentation]  Tramitar Pedido

    HomePage.Add Item to shopping cart
    HomePage.Add Item to shopping cart2

    ShoppingCart.Add one unit
    ShoppingCart.Remove one unit
    ShoppingCart.Remove one item
    ShoppingCart.Continue Checkout

    ShoppingCart.Change Direction
    ShoppingCart.Update Direction
    ShoppingCart.Add Commentary
    ShoppingCart.Shipping Delivery
    ShoppingCart.Payment Method
    ShoppingCart.GetPDF

