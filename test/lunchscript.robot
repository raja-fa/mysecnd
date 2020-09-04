*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${dirver_value}  chrome
#@{serach}   mobile  books   laptop

&{serach}   abc= mobile   are= books    arr=laptop
&{my_value}   ab=hiar  cv= art

*** Test Cases ***
helo my frist test
    [documentation]     my  test
    [tags]
    OPEN BROWSER   https://www.amazon.fr/       ${dirver_value}
    ${value}       Get From Dictionary   ${serach}  abc
    input text     xpath://*[@id="twotabsearchtextbox"]     ${value}
    click element  xpath://*[@id="nav-search-submit-text"]/input
   # close browser

*** keywords ***





