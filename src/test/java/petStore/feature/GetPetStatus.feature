Feature: sample test PetStore

  Background:
    #* def headers = read('classpath:petStore/support/headers.yaml')
    * url 'https://petstore.swagger.io/v2'


  Scenario Outline: get all pets by status
    Given path '/pet/findByStatus'
    And params <valorStatus>
    When method get
    Then status <status_code>
    * print response

    Examples:
      | status_code | valorStatus        |
      | 200         | {status:available} |
      | 200         | {status:pending}   |
      | 200         | {status:sold}      |


