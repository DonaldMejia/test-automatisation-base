Feature: Creacion de Personas

  Background:
    * configure ssl = true
    * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

  Scenario: Crear una persona
    * def create_persona_request =
      """
      {
        "name": "pedro",
        "alterego": "pedro",
        "description": "Genius billionaire",
        "powers": ["Inteligencia", "Sueño"]
      }
      """
    Given path '/testuser/api/characters'
    And request create_persona_request
    When method post
    Then status 201

    * def expectedName = create_persona_request.name
    * def expectedAlterego = create_persona_request.alterego


  Scenario: Crear una persona Nombre duplicado
    * def create_persona_request =
      """
      {
        "name": "Iron Man",
        "alterego": "Otro",
        "description": "Otro",
        "powers": ["Armor"]
      }
      """
    Given path '/testuser/api/characters'
    And request create_persona_request
    When method post
    Then status 400

    * def expectedName = create_persona_request.name
    * def expectedAlterego = create_persona_request.alterego

    And match response.name == expectedName
    And match response.alterego == expectedAlterego


  Scenario: Crear una persona Campos Obligatorios
    * def create_persona_request =
      """
      {
        "name": "",
        "alterego": "",
        "description": "",
        "powers": []
      }
      """
    Given path '/testuser/api/characters'
    And request create_persona_request
    When method post
    Then status 400

    * def expectedName = create_persona_request.name
    * def expectedAlterego = create_persona_request.alterego

