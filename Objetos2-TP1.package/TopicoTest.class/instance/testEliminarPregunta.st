tests
testEliminarPregunta
	self assert: (topico preguntas includes: pregunta1).
	topico eliminarPregunta: pregunta1.
	self deny: (topico preguntas includes: pregunta1)