*** Settings ***
Library    ../python/helper.py

*** Variables ***
${URL}      http://177.71.114.188

*** Keywords ***
I want the number "${value}" written in cursive
    Set Suite Variable      ${value}   ${value}
    Log                     ${value}

I want to send invalid value "${value}"
    Set Suite Variable      ${value}   ${value}
    Log                     ${value}

sending it as request in "${language}"
    ${response}             Get Req     ${language}     ${value}
    Log                     ${response}
    Set Suite Variable                  ${response}

response should be "${written_number}"
    Should Be Equal     ${response}      ${written_number}





