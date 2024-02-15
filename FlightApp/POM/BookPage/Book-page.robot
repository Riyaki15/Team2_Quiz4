*** Settings ***
Resource                ../Base//Base.robot
Library    OperatingSystem
Variables                Book-locator.yaml
*** Keywords ***

Click OneWay 
    Wait Until Element Is Visible    locator=${OneWay}
    Click Element                    locator=${OneWay}
Click RoundTrip
    Wait Until Element Is Visible    locator=${RoundTrip}
    Click Element                    locator=${RoundTrip}
Choose From City
    Click Element                locator=${CityFrom}
    Wait Until Page Contains     text=New York
    Click Element                locator=${NewYork}
Choose to City
    Click Element                locator=${CityTo}
    Wait Until Page Contains     text=Paris
    Click Element                locator=${Paris}
Choose Class
    Click Element                locator=${Class}
    Wait Until Page Contains     text=Economy
    Click Element                locator=${Economy}
Set Start Date
    Click Element                locator=${StartDate}
    Wait Until Element Is Visible     
    ...                          locator=${Date1}
    Click Element                locator=${SetDate}
    Click Element                locator=${Ok1}
Set End Date
    Click Element                locator=${EndDate}
    Wait Until Element Is Visible    
    ...                          locator=${Date2}    
    Click Element                locator=${SetDate2}
    Click Element                locator=${OK2}
Click Option 
    Wait Until Element Is Visible    
    ...                          locator=${Flight}
    Click Element                locator=${Flight}    
Click Book Button
    Click Element                locator=${BookBtn}
Choose Price and confirm
    Wait Until Page Contains    text=Click on the price to confirm your booking
    Click Element               locator=${Price1}
    Click Element               locator=${ConfirmBtn}
    Wait Until Page Contains    text=Your flight is booked. Reservation number is CADX2214
    
    
