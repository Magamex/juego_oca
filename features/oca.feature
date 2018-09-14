Feature: Juego de la Oca 


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
	And tiro el dado y saco 1
	Then suma 1 posicion


Scenario: Valida penalidad
	Given Visitar el inicio
	When Posicion "0"
	And tiro el dado y saco 4
	Then Veo mensaje de penalidad "retrocede 2 posiciones"
