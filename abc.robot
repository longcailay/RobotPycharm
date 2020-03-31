*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     https://courses.fit.hcmus.edu.vn


*** Test Cases ***
TC1:
    create session  gg  ${base_url}
    ${response}=    get request  gg  /login/index.php
    log to console  ${response.content}