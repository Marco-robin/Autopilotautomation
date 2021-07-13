*** Settings ***
Documentation        How it Works
Resource          ../Resources/howitresources.robot
Library             Selenium2Library


*** Test Cases ***
Header
   [Documentation]       Header test
   Begin Web Test
   Header How it work