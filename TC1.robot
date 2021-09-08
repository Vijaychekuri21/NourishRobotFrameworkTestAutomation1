*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Url}   https://dev-org.nourishcare.co.uk/login
${Browser}   Chrome
${Email}     vijaya.chekuri@nourishcare.co.uk
${Password}  Tulasi@23
${WelcomeToNourish}  xpath://h3[@class='bold-font']




*** Test Cases ***
LoginTest
     Create Webdriver    ${Browser}  executable_path=C:\\BrowserDrivers\\chromedriver.exe
     Go To     ${Url}
     element should be visible   ${WelcomeToNourish}
     element should be enabled   ${WelcomeToNourish}
     LoginToApplication
     Log to console  Login To Nourish Application successful
     close browser


*** Keywords ***
LoginToApplication
     input text  xpath://input[@placeholder='Login']     ${Email}
     input text  xpath://input[@placeholder='Password']  ${Password}
     click element  //input[@type='submit']

