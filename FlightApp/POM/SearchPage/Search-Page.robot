*** Settings ***
Resource                                ../Base/Base.robot
Variables                               Search-locator.yaml

*** Keywords ***
input valid Data
    Wait Until Element Is Visible        locator=${SearchText}
    Input Text                           locator=${SearchText}    text=DA935
Input invalid Data
    Wait Until Element Is Visible        locator=${SearchText}
    Input Text                           locator=${SearchText}    text=Aww    
Click Search
    Click Element                        locator=${SearchBtn}
Verify search is completed
    Wait Until Page Contains              text=DA 935
Verify search is fail
    Wait Until Page Contains              text=Please enter valid Flight Number