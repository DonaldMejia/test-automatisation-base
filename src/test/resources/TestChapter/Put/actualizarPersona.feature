Feature: Actualizar Persona

  Background:
    * configure ssl = true
    * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

  Scenario: Actualizar una persona
    * def characterId = 122
    * def update_persona_request =
      """
      {
        "name": "Iron Man",
        "alterego": "Tony Stark",
        "description": "Updated description",
        "powers": ["Armor", "Flight"]
      }
      """
    Given path '/testuser/api/characters/' + characterId
    And request update_persona_request
    When method put
    Then status 200

    * def expectedName = update_persona_request.name
    * def expectedAlterego = update_persona_request.alterego


  Scenario: Actualizar una persona No existente
    * def characterId = 1
    * def update_persona_request =
      """
      {
        "name": "Iron Man",
        "alterego": "Tony Stark",
        "description": "Updated description",
        "powers": ["Armor", "Flight"]
      }
      """
    Given path '/testuser/api/characters/' + characterId
    And request update_persona_request
    When method put
    Then status 404

    * def expectedName = update_persona_request.name
    * def expectedAlterego = update_persona_request.alterego
