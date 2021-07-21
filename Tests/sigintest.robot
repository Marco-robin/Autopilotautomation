*** Settings ***
Documentation        SIGN IN
Resource          ../Resources/signinresources.robot
Library             Selenium2Library

***Test Cases***

Sign in 
  [Documentation]  Succesfull Sign in test
  Begin Web Test
  Sign In

Sign In with invalid credentials
  [Documentation]     Sign in with invalid credentials test
   Invalid Credentials 

Sign in empy fields 
   [Documentation]     Sign in with empty fields test
   Empy fields 

forgot password
  Forgot pass
  