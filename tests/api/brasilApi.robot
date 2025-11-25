*** Settings ***
Resource    ../../resources/api/brasilapi.resource
Library     Collections

*** Test Cases ***
Validar Lista De Feriados 2025
    Consultar Feriados Por Ano
