Feature: Authorization api

  Background:
    * def auth_feature = call read('autohorization.feature'){grant_type:'client_credentials',client_secret:'8a73b1219b5e1e44db6d8f8725481b3d',client_id:'anr'}
    * def access_token = auth_feature.token_value
    * def res1 = auth_feature.res
    * url 'http://coop.apps.symfonycasts.com'

  Scenario: Creating access token
    Given path 'api/1692/chickens-feed'
    And header Authorization = 'Bearer '+ access_token
    When method POST
    Then status 200
    Then print 'res.......',response















