*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${cititzed_id}  1234567891234
${name}  Mark
${surname}  Nana
${phone_number}  0818888888
${occupation}  Student
${birth_date}  08142001
${address}  89/86

${url}  https://vaccine-haven.herokuapp.com/
${Browser}  chrome
*** Keywords ***

*** Test Cases ***
1.Go to homepage
   Open Browser  ${url}  ${Browser}
   Maximize Browser Window

2. Go to registration page
   Click Element  //text[@class="white nav-dropdown-link"]
   Click Link  xpath=//a[@href="/registration"]

3. Input id
   Input Text  name=citizen_id  ${cititzed_id}

4. Input name and surname
   Input Text  name=name  ${name}
   Input Text  name=surname  ${surname}

5. Input birth date
   Input Text  name=birth_date  ${birth_date}

6. Input occupation
   Input Text  name=occupation  ${occupation}

7.Input phone_number
   Input Text  name=phone_number  ${phone_number}

8.Input address
   Input Text  name=address  ${address}

9.Registration
   click button  css=.btn-info