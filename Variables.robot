*** Settings ***
Documentation   Variable for Watchlist Test
*** Variables ***


${URL}                      https://www.imdb.com/chart/top/?ref_=nv_mv_250
${BROWSER}                  chrome
${PAGE_SIGNIN_BTN}          xpath://*[@id="imdbHeader"]/div[2]/div[5]/a/div
${SIGNIN_IMDB}              class:auth-provider-text
${CREAT_NEWACCOUNT_BTN}     xpath://*[@id="signin-options"]/div/div[2]/a
${NAME}                     id:ap_customer_name
${NEW_EMAIL}                name:email
${PASSWORD}                 name:password
${RE_ENTER_PASSWORD}        name:passwordCheck
${SIGNIN_USER_BNT}          id:signInSubmit
${SIGNIN_EMAIL}             id:ap_email
${SIGNIN_PASSWORD}          id:ap_password
${CREAT_IMDB_BNT}           id:signInSubmit
${WATCHLIST_TOP_BNT}        Watchlist
${ADD_TO_WATCHLIST}         class:ipc-btn__text
${WATCHLIST_REMOVE}         xpath://*[@id="page-1"]/div/div/div[1]/div
${USER_EMAIl}               ${EMPTY}
${USER_PASSWORD}            ${EMPTY}
${ADDED_MOVIE}              The Shawshank Redemption
