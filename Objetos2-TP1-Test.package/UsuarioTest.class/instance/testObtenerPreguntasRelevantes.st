tests
testObtenerPreguntasRelevantes
	| colec |
	colec := OrderedCollection new.
	colec := us2 obtenerPreguntasRelevantes.
	self assert: us2 topicosDeInteres size equals: 2.
	self assert: (us2 usuariosSeguidos includes: us3).
	self deny: (us2 usuariosSeguidos includes: us1).
	self assert: us3 preguntas size equals: 1.
	self assert: colec size equals: 1.
	self assert: (colec includes: preg3)