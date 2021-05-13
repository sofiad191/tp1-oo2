tests
testCalcularPuntajeUsuario
	self assert: usuario1 calcularPuntajeUsuario equals: 70.
	pregunta1
		agregarVoto: (Voto likeConUsuario: usuario2 yPublicacion: pregunta1).
	self assert: usuario1 calcularPuntajeUsuario equals: 71.
	pregunta1
		agregarVoto: (Voto dislikeConUsuario: usuario2 yPublicacion: pregunta1).
	self assert: usuario1 calcularPuntajeUsuario equals: 69