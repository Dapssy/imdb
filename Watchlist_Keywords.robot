*** Settings ***
Documentation   Keyword for Watchlist Test
Library     SeleniumLibrary
Resource   Variables.robot



*** Keywords ***

Add To Watch-list
    [Arguments]                     ${username}  ${password}
     Wait And Input Text            ${SIGNIN_EMAIL}         ${username}
     Wait And Input Text            ${SIGNIN_PASSWORD}      ${password}
     Wait And CLick Element         ${SIGNIN_USER_BNT}
     Click Link                     ${ADDED_MOVIE}
     Wait And CLick Element         ${ADD_TO_WATCHLIST}
     Page Should Contain            The Shawshank Redemption
     [Teardown]  close browser


Delete From Watch-List
    [Arguments]                     ${username}  ${password}
     Wait And Input Text            ${SIGNIN_EMAIL}         ${username}
     Wait And Input Text            ${SIGNIN_PASSWORD}      ${password}
     Wait And CLick Element         ${SIGNIN_USER_BNT}
     Wait And CLick Element         ${WATCHLIST_TOP_BNT}
     Wait And CLick Element         ${WATCHLIST_REMOVE}
     Reload Page
     Page Should Contain            Your Watchlist is empty
     [Teardown]  close browser

Wait And CLick Element
        [Documentation]    Wait for element to be enable before clicking
        [Arguments]                 ${selector}     ${timeouts}=10s
        Wait Until Element Is Enabled     ${selector}
        Click Element                ${selector}

Wait And Input Text
        [Documentation]    Wait for element to be enable before inputing text
        [Arguments]                 ${selector}   ${text}   ${timeouts}=10s
        Wait Until Element Is Enabled     ${selector}
        Input Text                   ${selector}      ${text}

Login to the Signin page
     Open Browser                    ${URL}     ${BROWSER}
     Maximize Browser Window
     Wait And CLick Element          ${PAGE_SIGNIN_BTN}
     Wait And CLick Element          ${SIGNIN_IMDB}

Second keyword

