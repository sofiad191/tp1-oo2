tests
testObtenerPreguntasRelevantes
	| colec |
	colec := OrderedCollection new.
	colec := us2 obtenerPreguntasRelevantes.
	self assert: (us2 usuariosSeguidos includes: us3).
	self deny: (us2 usuariosSeguidos includes: us1).
	self assert: colec size equals: 2.
	self assert: (colec includes: preg3).
	self assert: (colec includes: preg1)