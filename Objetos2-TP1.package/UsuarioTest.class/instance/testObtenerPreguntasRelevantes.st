tests
testObtenerPreguntasRelevantes
	| coleccionTopicos |
	coleccionTopicos := OrderedCollection new.
	coleccionTopicos := usuario2 obtenerPreguntasRelevantes.
	self assert: usuario2 topicosDeInteres size equals: 1.
	self assert: (usuario2 usuariosSeguidos includes: usuario1).
	self assert: usuario1 preguntas size equals: 1.
	self assert: coleccionTopicos size equals: 1.
	self assert: (coleccionTopicos includes: pregunta1)