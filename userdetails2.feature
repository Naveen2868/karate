Feature: sample karate test script

  Background:
    * url 'https://reqres.in/api/users'

  Scenario: get call test
    And param page = 2
    When method GET
    Then status 200
    Then print response
    * def expectedOutput = read('result1.json')
    And match response == expectedOutput

    * def myfun1 = function(){return 'Hello'}
    * def returndata1 = call myfun1
    Then print 'returndata1...',returndata1

    * def myfun2 =
    """
    function(){
    return 'mydata'
    }
    """
    * def returndata2 = call myfun2
    Then print 'returndata2...',returndata2