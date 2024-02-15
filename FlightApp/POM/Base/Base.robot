*** Settings ***
Library        AppiumLibrary
*** Keywords ***
Open Flight Application
    Open Application    
    ...    remote_url=http://localhost:4723/wd/hub    
    ...    platformName=Android     
    ...    platformVersion=9.0       
    ...    deviceName=Pixel 7 API 28        
    ...    appPackage=com.example.myapplication        
    ...    appActivity=com.example.myapplication.MainActivity  
Close Flight Application
    Close Application