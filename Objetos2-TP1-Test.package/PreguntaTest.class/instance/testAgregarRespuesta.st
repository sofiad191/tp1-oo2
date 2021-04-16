tests
testAgregarRespuesta
	| res res2 |
	self assert: preg1 respuestas size equals: 0.
	
	res:= Respuesta conPregunta: preg1 YUnaDescripcion: 'Lee el libro'.
	us1 agregarRespuesta: res.
	preg1 agregarRespuesta: res.
	
	self assert: (preg1 respuestas includes: res).
	res2 := Respuesta conPregunta: preg2 YUnaDescripcion: '...'.
	preg2 agregarRespuesta: res2.
	self deny: (preg1 respuestas includes: res2)