@ignore
Feature: Authorization api

  Background:
    * url 'http://coop.apps.symfonycasts.com'

  Scenario: Creating access token
    * def params =
    """
    {
    'grant_type' : '#(grant_type)',
    'client_secret' : '#(client_secret)',
    'client_id' : '#(client_id)'
    }
    """

   # And form field grant_type = 'client_credentials'
   # And form field client_secret = '8a73b1219b5e1e44db6d8f8725481b3d'
   # And form field client_id = 'anr'

    Given path 'token'
    And form fields params
    When  method POST
    Then status 200
    Then print 'response ......',response
    * def token_value = response.access_token
    Then print 'token value is ......',token_value

















