tests
testDarLike
	publi1 agregarLikeConUsuario: us2.
	self assert: publi1 votos size equals: 1.
	self assert: publi1 calcularPuntaje equals: 1.
		publi1 agregarLikeConUsuario: us1.
	self assert: publi1 votos size equals: 2.
	self assert: publi1 calcularPuntaje equals: 2