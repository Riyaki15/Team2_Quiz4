*** Settings ***
Resource   ../Base/Base.robot
Variables  afterlogin-locator.yaml
*** Keywords ***
Input Username & Password to Login
    Wait Until Element Is Visible    locator=${username}
    Input Text       
    ...    locator=${username}
    ...    text=support@ngendigital.com
    Input Text        
    ...    locator=${password}
    ...    text=abc123
    Click Element    
    ...    locator=${signin_btn}
    
