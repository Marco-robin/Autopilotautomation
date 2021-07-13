***Settings***
Resource          ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json

*** Variables ***
${login}            //A[@class='nav-link greenlnk']
${howitworks}      //A[@class='nav-link normal '][text()='How it Works']
${ourFleet}       //A[@class='nav-link normal '][text()='Our Fleet']
${Faq}           //A[@class='nav-link normal '][text()='FAQ']
#${Learnmore}     //A[@Strong class='uppercase']
${about}          //A[@href='/about'][text()='About']
${Contact}       //A[@href='/contact'][text()='Contact Us']
${testimonials}    //A[@href='/testimonials'][text()='Testimonials']
${privacyterms}    //A[@class='whitelnk padding-tight'][text()='Privacy & Terms of Use']
# ${help}           //div[@style="float: right;"]/ancestor::*[4]
${image}            //*[@id="mainNav"]/a
${middle}           //image[@id="press-2019"]/div/ul/li[1]/a
***Keywords***

Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   

Robin image
    Click Element         xpath:${image}

How it works
   Click Element          xpath:${howitworks}

Our Fleet
   Click Element           xpath:${ourFleet}

FAQ
    Click Element          xpath:${Faq}

GotoLogin
    Click Element          xpath:${login}
# Learn More
#    Click Element           xpath:${Learnmore}
About
  
  Execute JavaScript       window.scrollTo(0, document.body.scrollHeight)
  Click Element            xpath:${about}
Contact Us
    Execute JavaScript       window.scrollTo(0, document.body.scrollHeight)
    Click Element            xpath:${Contact}

Testimonials
   Execute JavaScript         window.scrollTo(0, document.body.scrollHeight)
   Click Element              xpath:${testimonials}

Privacy & Terms 
     Execute JavaScript         window.scrollTo(0, document.body.scrollHeight)
     Click Element             xpath:${privacyterms}

# Help
#    Wait Until Page Contains Element    ${help}  
#    Click Element At Coordinates           ${help}   107   46

Middle part of the page 
             
   Scroll Element Into View        ${middle}