Feature: Eliminacion de Persona

  Background:
    * configure ssl = true
    * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

  Scenario: Eliminar una persona
    * def characterId = 122
    Given path '/testuser/api/characters/' + characterId
    When method delete
    Then status 204

  Scenario: Eliminar una persona No existente
    * def characterId = 1
    Given path '/testuser/api/characters/' + characterId
    When method delete
    Then status 404