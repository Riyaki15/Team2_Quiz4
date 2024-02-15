*** Settings ***
Resource   ../Base/Base.robot
Variables  Login-locator.yaml
*** Keywords ***
Input Username
    Wait Until Element Is Visible    locator=${username}
    Input Text       
    ...    locator=${username}
    ...    text=${username_text}
Input Password
    Input Text        
    ...    locator=${password}
    ...    text=${password_text}
Click Sign In on Login Page
    Click Element    
    ...    locator=${signin_btn}
Input Wrong Password
    Input Text        
    ...    locator=${password}
    ...    text=aww
Input Wrong Username
    Wait Until Element Is Visible    locator=${username}
    Input Text       
    ...    locator=${username}
    ...    text=bambang@gmail.com
Verify login error
    Wait Until Page Contains    text=Invalid username/password

