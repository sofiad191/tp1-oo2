tests
testAgregarPregunta

	self assert: usuario1 preguntas size equals: 1.
	self assert: (usuario1 preguntas includes: pregunta1).
