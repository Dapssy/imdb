*** Settings ***
Documentation    Validation of Watch-List
Library          SeleniumLibrary
Resource         Watchlist_Keywords.robot
Resource         Variables.robot

*** Test Cases ***



Verify that movie was succesfully added to watch-list
    Login to the Signin page
    Add To Watch-list         ${USER_EMAIl}    ${USER_PASSWORD}


Verify that movie was succesfully removed to watch-list
    Login to the Signin page
    Delete From Watch-List     ${USER_EMAIl}    ${USER_PASSWORD}



*** Keywords ***
