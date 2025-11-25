*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}        https://brasilapi.com.br/api
${YEAR}            2025

*** Keywords ***
Consultar Feriados Por Ano
    Create Session    brasilapi    ${BASE_URL}
    ${response}=    GET On Session    brasilapi    /feriados/v1/${YEAR}
    Should Be Equal As Integers    ${response.status_code}    200
