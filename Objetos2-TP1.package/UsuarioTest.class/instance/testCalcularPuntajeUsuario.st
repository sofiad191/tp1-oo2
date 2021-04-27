tests
testCalcularPuntajeUsuario
	self assert: us1 calcularPuntajeUsuario equals: 70.
	preg1 agregarLikeConUsuario: us2.
	self assert: us1 calcularPuntajeUsuario equals: 71.
	preg1 agregarDislikeConUsuario: us3.
	self assert: us1 calcularPuntajeUsuario equals: 70