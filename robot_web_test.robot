*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${cititzed_id}  7867767972313
${url}  https://vaccine-haven.herokuapp.com/
${Browser}  chrome

*** Test Cases ***
1.Go to homepage
   Open Browser  ${url}  ${Browser}
   Maximize Browser Window

2. Test homepage
    Title Should Be    Vaccine Haven
    Page Should Contain  Citizen Registration
    Page Should Contain  Vaccine Reservation
    Page Should Contain  Your Information
    Page Should Contain  Vaccine Site

3. Go to reservation page
   Click Element  //text[@class="white nav-dropdown-link"]
   Click Link  nav__reserve__link

4. Create reservation
    Input Text  name=citizen_id  ${cititzed_id}
    Select from list by value  name=site_name  OGYHSite
    Select from list by value  name=vaccine_name  Sinovac
    click button  id=reserve__btn
    Sleep  3

5. Go to my Info page
    Click Link  id=nav__info__link
    Input Text  name=citizen_id  ${cititzed_id}
    click button  id=info__btn
    Sleep  2
    Click Element  id=cancel__btn