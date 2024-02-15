*** Settings ***
Resource                ../POM/AfterLogin/afterlogin-page.robot
Resource                ../POM/HomePage/Home-page.robot
Resource                ../POM/SearchPage/Search-Page.robot


*** Test Cases ***
Search valid Data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username & Password to Login
    To Search Page
    input valid Data
    Click Search
    Verify search is completed
    Close Flight Application
Search invalid Data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username & Password to Login
    To Search Page
    Input invalid Data
    Click Search
    Verify search is fail
    Close Flight Application


