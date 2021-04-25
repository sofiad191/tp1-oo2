tests
testEliminarPregunta
	self assert: (topico preguntas includes: preg1).
	topico eliminarPregunta: preg1.
	self deny: (topico preguntas includes: preg1)
	