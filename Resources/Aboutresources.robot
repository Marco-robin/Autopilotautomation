***Settings***
Resource                         ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json

*** Variables ***
${about}          //A[@href='/about'][text()='About']
${img}           //DIV[@class='container d-flex flex-column justify-content-center align-items-center']
${whoare}        //H2[@class='title'][text()='Who are we']
${meetbtn}        //SPAN[@class='btn-text'][text()='Meet Our Team']
${teammembers}      //H2[text()='Team Members']
${mission}          //H2[@class='h2 mb-4'][text()='Our Mission']
${Robinimg}         //IMG[@src='https://new.robinautopilot.com/assets/img/Robin Logo_White.svg']
${model}             //H2[@class='h2 mb-4'][text()='Our Model']
${benefits}    

***Keywords***
Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   

Aboutpage

    Execute JavaScript       window.scrollTo(0, document.body.scrollHeight) 
    Click Element            ${about}
    Element Should Be Visible        ${img}

team
     Element Should Be Visible         ${whoare}
     Click Element                    ${meetbtn}
     Element Should Be Visible        ${teammembers}
     Execute JavaScript            window.scrollTo(0, document.body.scrollHeight) 
     Click Element                   ${Robinimg} 
     Execute JavaScript            window.scrollTo(0, document.body.scrollHeight) 
     Click Element            ${about}

mission

    Execute JavaScript    window.scrollBy(0,200)
    Element Should Be Visible     ${mission} 

model
          Execute JavaScript    window.scrollBy(0,300)
          Element Should Be Visible     ${model} 
       
# benefits
#       Execute JavaScript             window.scrollBy(0,400)
#       Element Should Be Visible         ${benefits}
     


     


