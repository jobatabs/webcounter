*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to a value, the value should become the set value
   Go To  ${HOME_URL}
   Input Text    value    10
   Click Button    Aseta
   Page Should Contain    nappia painettu 10 kertaa