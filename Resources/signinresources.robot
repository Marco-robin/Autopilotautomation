***Settings***
Resource                         ../Resources/data.robot
Library                             String
Library                             Selenium2Library
Library                             RequestsLibrary
Library                             Collections
Library                             json


*** Variables ***

${email}              //INPUT[@class='form-control']
${password}          //INPUT[@id='consumer_password'] 
${submit}           //INPUT[@class='btn-lg btn-block btn-action']
${login}            //A[@class='nav-link greenlnk']
${succestxt}        //DIV[@class='col text-center header-interior']
${text}             //h2[contains(text(),''No referrals.... yet!')]
${flash_error}      //DIV[@id='flash_error']
${Robinimg}         //IMG[@src='https://new.robinautopilot.com/assets/img/Robin Logo_White.svg']
${Forgotpass}       //A[@href='http://staging.robinautopilot.com/sessions/forgot_password'][text()='Click here to reset it']


***Keywords***

Begin Web Test
   Open Browser                    ${autopilot_url}       Firefox
   Maximize Browser Window   

Sign In 
   Click Element            ${login}
   Input Text               ${email}         ${customer_email}
   Input Text               ${password}      ${pass}    
   Click Element            ${submit}
   Element Should Be Visible    ${succestxt}  
   Execute JavaScript         window.scrollTo(0, document.body.scrollHeight)
   Click Element             ${Robinimg}

Invalid Credentials 
   Click Element                    ${login}
   Input Text                       ${email}                 ${invalid_email}
   Input Text                       ${password}              ${invalid_pass}
   Click Element                   ${submit}   
   Element Should Be Visible       ${flash_error} 
     
Empy fields 

   Execute JavaScript         window.scrollTo(0, document.body.scrollHeight)
   Click Element             ${Robinimg}
   Click Element                    ${login}             
   Click Element                    ${submit}   
   Element Should Be Visible       ${flash_error} 

Forgot pass
        Execute JavaScript               window.scrollTo(0, document.body.scrollHeight)
        Click Element                    ${Robinimg}
        Click Element                    ${login}
        Click Element                    ${Forgotpass}  
