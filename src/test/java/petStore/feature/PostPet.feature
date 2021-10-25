Feature: sample test PetStore

  Background:
    * def headers = read('classpath:petStore/support/headers.yaml')
    * url 'https://petstore.swagger.io/v2'


  Scenario: create a new pet
    * def body = read('classpath:petStore/data/body.json')
    Given path '/pet'
    And request body
    When method post
    Then status 200
    * print response
    And match response.name == 'star'
    And match response.id == 1
    And match response.category.name == 'testeQA'
    And match response.category.id == 2



