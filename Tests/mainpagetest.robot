*** Settings ***
Documentation        MAIN MENU
Resource          ../Resources/mainpageresources.robot
Library             Selenium2Library


*** Test Cases ***
Go to autopilot test
    [Documentation]    Autopilot page
    [Tags]  Smoke       
    Begin Web Test 
                  
    #  https://${login_url}/web
Go to HoitWorks
   [Documentation]     Ho it works page
    How it works

Go to Fleet
   [Documentation]      Fleet page
   Our Fleet
Go to FAQ
   [Documentation]    FAQ  page
    FAQ 
Go to Login
   [Documentation]    Go to login page 
   GotoLogin
# Learn More 
#    [Documentation]  Learn More page
#    Learn More
About page
   [Documentation]   About page
   About
Contact US
   [Documentation]  Contact page
   Contact Us
Testimonials
   [Documentation]  Testimonials page
   Testimonials
Privacy&terms 
   [Documentation]     Privacy & Terms of Use
    Privacy & Terms    

# Help
#    Help    

# The middle part 
#     Robin image
#     Middle part of the page 