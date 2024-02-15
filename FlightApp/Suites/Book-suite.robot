*** Settings ***
Resource            ../POM/AfterLogin/afterlogin-page.robot
Resource            ../POM/BookPage/Book-page.robot
Resource            ../POM/HomePage/Home-page.robot

*** Test Cases ***
Booking One Way
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username & Password to Login
    To Book page
    Click OneWay
    Choose From City
    Choose to City
    Choose Class
    Set Start Date
    Set End Date
    Click Option 
    Click Book Button
    Choose Price and confirm
    Close Flight Application
Booking RoundTrip
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username & Password to Login
    To Book page
    Click RoundTrip
    Choose From City
    Choose to City
    Choose Class
    Set Start Date
    Set End Date
    Click Option 
    Click Book Button
    Choose Price and confirm
    Close Flight Application




