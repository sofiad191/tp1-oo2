tests
testAgregarRespuesta
	| res res2 |
	self assert: preg1 respuestas size equals: 0.
	res := Respuesta
		conPregunta: preg1
		unaDescripcion: 'Lee el libro'
		yUnUsuario: us1.
	us1 agregarRespuesta: res.
	preg1 agregarRespuesta: res.
	self assert: (preg1 respuestas includes: res).
	self assert: preg1 respuestas size equals: 1.
	res2 := Respuesta
		conPregunta: preg2
		unaDescripcion: '...'
		yUnUsuario: us1.
	us1 agregarRespuesta: res2.
	preg1 agregarRespuesta: res2.
	self assert: (preg1 respuestas includes: res2).
	self assert: preg1 respuestas size equals: 2