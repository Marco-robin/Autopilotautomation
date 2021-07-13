***Settings***
Resource          ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json


***Variables***
${howitworks}      //A[@class='nav-link normal '][text()='How it Works']
${Husqvarnatitle}         //H1[@class='title display-2 shadowed nobottom'][text()='Finally, something that’s easier done than said.']
${enterAddres}            //STRONG[text()='enter your address.']

***Keywords***
Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   
 
Header How it work
   Click Element                     ${howitworks} 
   Element Should Be Visible         ${Husqvarnatitle}    

Enter addres
    Click Element                   ${enterAddres}   