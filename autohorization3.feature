Feature: Authorization api

  Background:
    * url 'http://coop.apps.symfonycasts.com'

  Scenario: Creating access token
    Given path 'api/1692/chickens-feed'
    * def token = auth_token.token_value
    And header Authorization = 'Bearer '+ token
    When method POST
    Then status 200
    Then print 'res.......',response















