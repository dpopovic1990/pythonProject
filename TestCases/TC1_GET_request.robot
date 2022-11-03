*** Settings ***
Library  RequestsLibrary

*** Variables ***
${base_url}     https://demoqa.com
${city}     Delhi

*** Test Cases ***
Get_weatherInfo
    create session      mysession   ${base_url}
    ${resposnse}=   get request     mysession   /BookStore/v1/Books
    #log to console    ${resposnse.status_code}
    #log to console    ${resposnse.content}

    #VALIDATION
    ${status_code}=     convert to string     ${resposnse.status_code}
    should be equal    ${status_code}   200
