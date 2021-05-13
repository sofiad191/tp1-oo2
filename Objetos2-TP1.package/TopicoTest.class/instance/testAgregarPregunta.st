tests
testAgregarPregunta
	self assert: (topico preguntas includes: pregunta1).
	self assert: (topico preguntas includes: pregunta2).
	self assert: topico preguntas size equals: 2.