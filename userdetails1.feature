Feature: sample karate test script

  Background:
    * def result1 = read('../data/result3.json')
    #* def result = read('userdetails2.feature')
    * def output = call read('userdetails2.feature')

  Scenario: get call test1
    Given url 'https://reqres.in/api/users?page=3'
    When method GET
    Then status 200
    Then print response = result1[0]
    Then print 'output ......',output
    * def first_name = output.response.data[0].first_name
    Then print 'first_name is ....',first_name