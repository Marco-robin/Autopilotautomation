***Settings***
Resource          ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json


***Variables***
${ourFleet}       //A[@class='nav-link normal '][text()='Our Fleet']

***Keywords***
Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   

