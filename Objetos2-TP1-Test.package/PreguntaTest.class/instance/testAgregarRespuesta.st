tests
testAgregarRespuesta
	| res res2 |
	self assert: preg1 respuestas size equals: 0.
	res := us2 agregarRespuestaConTexto: 'Lee el libro' yPregunta: preg1.
	preg1 agregarRespuesta: res.
	self assert: (preg1 respuestas includes: res).
	res2 := us1 agregarRespuestaConTexto: '...' yPregunta: preg2.
	self deny: (preg1 respuestas includes: res2)