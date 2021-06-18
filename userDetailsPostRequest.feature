Feature: post call test

  Background:
    * def payload = read('postrequest.json')
    * url 'https://reqres.in/api/users'
    * headers {Content-Type : 'application/json',Accept: 'application/json'}

  Scenario: create user details
    And request payload
    And param delay = 3
    When method POST
    Then status 201
    Then print 'res......',response
      