tests
testAgregarRespuesta
	| res |
	self assert: (us1 respuestas includes: res2).
	self assert: us1 respuestas size equals: 1.
	self deny: (us1 respuestas includes: res1).
	
	res := Respuesta conPregunta: '..' YUnaDescripcion: 'Res prueba'.
	us1 agregarRespuesta: res.
	
		self assert: (us1 respuestas includes: res).
	self assert: us1 respuestas size equals: 2.
	