Feature: Obtener todos los personajes
    Background:
      * configure ssl = true
      * url 'http://bp-se-test-cabcd9b246a5.herokuapp.com'

    Scenario: Obtener todos los personajes
        Given path '/testuser/api/characters'
        When method get
        Then status 200
