tests
testAgregarTopicos
	self assert: coleccionTopicos1 size equals: 3.
	self assert: pregunta1 topicos size equals: 3.
	self assert: (pregunta1 topicos includes: topico1)