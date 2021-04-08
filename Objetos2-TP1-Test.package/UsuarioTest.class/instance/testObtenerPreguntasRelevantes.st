tests
testObtenerPreguntasRelevantes
	| colec |
	colec := OrderedCollection new.
	colec := us1 obtenerPreguntasRelevantes.
	self assert: (colec includes: preg2)