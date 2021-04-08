tests
testAgregarPregunta
	| preg |
	self assert: us1 preguntas size equals: 1.
	self assert: (us1 preguntas includes: preg1).
	self deny: (us1 preguntas includes: preg2).
	preg := us1
		agregarPreguntaConTitulo: 'prueba'
		conDescripcion: '..'
		yTopicos: top1.
	
	self assert: us1 preguntas size equals: 2.
	self assert: (us1 preguntas includes: preg).