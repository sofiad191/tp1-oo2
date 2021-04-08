tests
testEliminarPregunta
	self assert: us1 preguntas size equals: 1.
	self assert: (us1 preguntas includes: preg1).
	us1 eliminarPregunta: preg1.
	self deny: (us1 preguntas includes: preg1).
	self assert: us1 preguntas size equals: 0.