tests
testAgregarPregunta
	| preg |
	self assert: us1 preguntas size equals: 1.
	self assert: (us1 preguntas includes: preg1).
	self deny: (us1 preguntas includes: preg2).
	preg:= Pregunta conTitulo: 'Prueba' descripcion: '..' yTopicos: top1.
	us1 agregarPregunta: preg.
	
	self assert: us1 preguntas size equals: 2.
	self assert: (us1 preguntas includes: preg).