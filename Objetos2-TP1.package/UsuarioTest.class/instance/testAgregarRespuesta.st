tests
testAgregarRespuesta
	self assert: (usuario1 respuestas includes: respuesta2).
	self assert: usuario1 respuestas size equals: 1.