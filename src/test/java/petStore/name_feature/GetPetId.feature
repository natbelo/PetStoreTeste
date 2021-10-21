Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * def headers = read('classpath:petStore/support/headers.yaml')
    * url 'https://petstore.swagger.io/v2'


  Scenario: get pet by id
    Given path '/pet/1'
    When method get
    Then status 200
    * print response

  Scenario: validar get pet by id não encontrado
    Given path '/pet/abc'
    When method get
    Then status 404
    And match response.message == "java.lang.NumberFormatException: For input string: \"abc\""
    And match response.type == "unknown"
    * print response


