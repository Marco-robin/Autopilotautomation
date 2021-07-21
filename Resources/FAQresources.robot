***Settings***
Resource                         ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json

*** Variables ***

${Faq}                      //A[@class='nav-link normal '][text()='FAQ']
${heaederfaq}              //H1[@class='title display-2 shadowed nobottom'][text()='Q: Do robots work? A: Yes.']
${arrow}                  //*[@id="faqs-video-wrap"]/button[2]/i
${q1}                    //A[@href='#vid-1'][text()='Are the robots safe for pets and kids?']
${q2}                   //A[@href='#vid-2'][text()='What happens if the robot gets stolen?']
${a2}                   //*[@id="vid-2"]/div/header/p[2]
${q3}                   //A[@href='#vid-4'][text()='Can the robots cross sidewalks, driveways, and rocky areas?']
${q4}                  //A[@href='#vid-5'][text()='Can it get past our fence gate and mow the backyard?']
${q5}                  //A[@href='#vid-6'][text()='Can the mowers handle dog poop and other pet waste?']
${q6}                 //A[@href='#vid-7'][text()='What happens to the grass clippings?']
${q7}                //A[@href='#vid-8'][text()='Does the robot mower live at my home?']
${q8}               //A[@href='#vid-9'][text()='Do the mowers mow in straight lines or in a random pattern?']
${q9}              //A[@href='#vid-10'][text()='Can the robot handle large hills?']
${q10}             //A[@href='#vid-11'][text()='Can the mowers handle leaves and sticks from trees?']
${q11}             //A[@href='#vid-12'][text()='Can the cutting height be adjusted?']
${q12}           //A[@href='#vid-13'][text()='How does rain affect the mower?']
${left}          //I[@class='fas fa-chevron-left']

***Keywords***

Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   
Heaeder
   Click Element                     ${Faq}
   Element Should Be Visible         ${heaederfaq}
Question 1 
   Element Should Be Visible         ${q1}
Question2
   Click Element                    ${arrow}
   Element Should Be Visible          ${q2}    
Question3
   Click Element                    ${arrow}
   Element Should Be Visible        ${q3}
Question4
    Click Element                   ${arrow}
    Element Should Be Visible       ${q4}
Question5
    Click Element                  ${arrow}
    Element Should Be Visible       ${q5}
Question6
     Click Element                  ${arrow}
    Element Should Be Visible       ${q6}
Question7                                 
     Click Element                  ${arrow}
    Element Should Be Visible       ${q7}
Question8                                 
     Click Element                  ${arrow}
    Element Should Be Visible       ${q8} 
Question9                                 
     Click Element                  ${arrow}
    Element Should Be Visible       ${q9}
Question10                                 
     Click Element                  ${arrow}
    Element Should Be Visible       ${q10}    
Question 11   
     Click Element                  ${arrow}
    Element Should Be Visible       ${q11} 

Question 12   
     Click Element                  ${arrow}
    Element Should Be Visible       ${q12} 

Right arrow
  Click Element     ${arrow}

left arrow
    Click Element     ${left}
    