*** Settings ***
Library                AppiumLibrary
*** Variables ***


*** Keywords ***
Open Flight Application
    Open Application    
    ...    remote_url=http://localhost:4723/wd/hub    
    ...    platformName=Android     
    ...    platformVersion=9.0       
    ...    deviceName=Pixel 7 API 28        
    ...    appPackage=com.example.myapplication        
    ...    appActivity=com.example.myapplication.MainActivity  
Click Sign in Button on Home Page
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text       
    ...    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    ...    text=support@ngendigital.com
Input Password
    Input Text        
    ...    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
    ...    text=abc123
Click Sign In on Login Page
    Click Element    
    ...    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Close Flight Application
    Close Application
Input Wrong Password
    Input Text        
    ...    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
    ...    text=aww
Input Wrong Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text       
    ...    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    ...    text=bambang@gmail.com
Verify login error
    Wait Until Page Contains    text=Invalid username/password


*** Test Cases ***
Login with Valid Data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
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
    Input Password
    Click Sign In on Login Page
    Verify login error
    Close Flight Application