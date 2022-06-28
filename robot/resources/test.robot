*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           Selenium2Library

*** Variables ***
${URL}            https://www.wikipedia.org/
${BROWSER}        Chrome
${DELAY}          0

*** Keywords ***
Given I am a user, I visit wikipedia page
    Open Browser    ${URL}      ${BROWSER}       service_log_path=${{os.path.devnull}}       options=add_argument("--ignore-certificate-errors"); add_argument("--window-size\=1440,1080")
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Then I should see Wikipedia word
    ${text} =   Get Text     //*[@class="central-textlogo-wrapper"]
    Should Contain Any    ${text}   Wikipedia

Then I click key in flower to the searchbar
    Input Text  //*[@id="searchInput"]   flower

And I click enter
    Click Element       class:pure-button

Then I should see first header
    Title Should Be    Flower - Wikipedia 
    ${text}=   Get Text     //*[@id="firstHeading"]
    Should Contain Any   ${text}   Flower