Feature: Juego de la Oca 

Scenario: Inicio
	Given Visitar el inicio
	Then Verifico boton de "jugada"

Scenario: Posicion Inicial
	Given Visitar el inicio
	Then Posicion "0"

Scenario: Juga!!!
	Given Visitar el inicio
	When Posicion "0"
	Then tiro el dado

Scenario: Suma
	Given Visitar el inicio
	When Posicion "0"
	And tiro el dado
	Then suma 1 posicion


Scenario: Validacion posicion
	Given Visitar el inicio
	When Posicion "0"
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	And tiro el dado
	Then verifica que se termina el juego

