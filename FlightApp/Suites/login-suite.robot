*** Settings ***

Resource        ../POM/HomePage/Home-page.robot
Resource        ../POM/Loginpage/Login-page.robot

*** Test Cases ***
Login with Valid Data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Login-page.Input Password
    Click Sign In on Login Page
    Close Flight Application
Login with invalid Data (wrong pass)
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Wrong Password
    Click Sign In on Login Page
    Verify login error
    Close Flight Application
Login with invalid Data (wrong username)
    Open Flight Application
    Click Sign in Button on Home Page
    Input Wrong Username
    Login-page.Input Password
    Click Sign In on Login Page
    Verify login error
    Close Flight Application
    

