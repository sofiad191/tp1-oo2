tests
testCalcularPuntajeUsuario
	self assert: us1 calcularPuntajeUsuario equals: 70.
	us2 agregarVotoConEstado: true aPublicacion: preg1.
	self assert: us1 calcularPuntajeUsuario equals: 71.
	us3 agregarVotoConEstado: false aPublicacion: preg1.
	self assert: us1 calcularPuntajeUsuario equals: 70