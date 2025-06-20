Feature: Obtener todos los personajes por ID
  Background:
    * configure ssl = true
    * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

  Scenario: Obtener todos los personajes por ID
    * def characterId = 50
    Given path '/testuser/api/characters/' + characterId
    When method get
    Then status 200