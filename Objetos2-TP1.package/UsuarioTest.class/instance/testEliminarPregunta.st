tests
testEliminarPregunta
	self assert: usuario1 preguntas size equals: 1.
	self assert: (usuario1 preguntas includes: pregunta1).
	usuario1 eliminarPregunta: pregunta1.
	self deny: (usuario1 preguntas includes: pregunta1).
	self assert: usuario1 preguntas size equals: 0