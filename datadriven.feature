Feature: post call test

  Background:
    #* def payload = read('postrequest.json')
    * url 'https://reqres.in/api/users'
    * headers {Content-Type : 'application/json',Accept: 'application/json'}

  Scenario Outline: data driven test
    And request {"name": <name>,"job": <job>}
    #And param delay = 3
    When method POST
    Then status 201
    Then print 'res1......',response
    * def result = response

    Given url 'https://reqres.in/api/users/'+result.id
    When method GET
    Then status 200
    Then print 'response2......',response
    #And match response.page contains {id:'#(result.id)'}

    Examples:
      |read('data.csv')|