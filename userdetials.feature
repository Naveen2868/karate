Feature: sample karate test script

  Background:
    * url 'https://reqres.in/api/users'

  Scenario: get call test
    And param page = 2
    When method GET
    Then status 200
    #Then print response
    * def expectedOutput = read('result1.json')
    And match response == expectedOutput
    * def data = response.data
    Then print 'data array ......',data

    * def myfun =
    """
    function(arg){
    for(i=0; i<arg.length;i++){
    if(arg[i].id == 9){
    return arg[i]
        }
      }
    }
    """

    * def dataforid = call myfun data
    Then print 'dataforid......',dataforid