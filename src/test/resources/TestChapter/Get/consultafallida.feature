Feature: Consulta fallida

  Background:
    * configure ssl = true
    * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

  Scenario: Consulta fallida
    * def characterId = 999
    Given path '/testuser/api/characters/ + characterId
    When method get
    Then status 404