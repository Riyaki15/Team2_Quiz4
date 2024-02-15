*** Settings ***
Resource            ../Base/Base.robot
Variables            Home-locator.yaml
*** Keywords ***
Click Sign in Button on Home Page
    Wait Until Element Is Visible    locator=${login_btn}
    Click Element    locator=${login_btn}
To Book page
    Wait Until Element Is Visible    locator=${home_btn}
    Click Element    locator=${home_btn}
To Search Page
    Wait Until Element Is Visible    locator=${search_tab}
    Click Element    locator=${search_tab}