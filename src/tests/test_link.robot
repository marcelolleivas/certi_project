*** Settings ***
Resource     ../robot/resources.robot
#Library          ../base.py

*** Test Cases ***
Sending positive valid number and getting it in portuguese
    Given I want the number "10" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "dez"

Sending negative valid number and getting it in portuguese
    Given I want the number "-10" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "menos dez"

Sending last positive valid number and getting it in portuguese
    Given I want the number "99999" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "noventa e nove mil e novecentos e noventa e nove"

Sending first negative valid number and getting it in portuguese
    Given I want the number "-99999" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "menos noventa e nove mil e novecentos e noventa e nove"

Sending invalid positive number and getting an error message on portuguese API
    Given I want the number "100000" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"

Sending invalid negative number and getting an error message on portuguese API
    Given I want the number "-100000" written in cursive
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"

Sending invalid parameter and getting an error message on portuguese API
    Given I want to send invalid value "abc"
    When sending it as request in "portuguese"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"

Sending positive valid number and getting it in english
    Given I want the number "10" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "ten"

Sending negative valid number and getting it in english
    Given I want the number "-10" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "minus ten"

Sending last positive valid number and getting it in english
    Given I want the number "99999" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "nine thousand nine hundred ninety-nine"

Sending first negative valid number and getting it in english
    Given I want the number "-99999" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "minus nine thousand nine hundred ninety-nine"

Sending invalid positive number and getting an error message on english API
    Given I want the number "100000" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"

Sending invalid negative number and getting an error message on english API
    Given I want the number "-100000" written in cursive
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"

Sending invalid parameter and getting an error message on english API
    Given I want to send invalid value "abc"
    When sending it as request in "english"
    Then response should be a json
    And response json key "extenso" should be "Invalid data"