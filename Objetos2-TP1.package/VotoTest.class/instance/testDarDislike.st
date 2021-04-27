tests
testDarDislike
	publi1 agregarDislikeConUsuario: us2.
	self assert: publi1 votos size equals: 1.
	self assert: publi1 calcularPuntaje equals: -1.
	publi1 agregarDislikeConUsuario: us1.
	self assert: publi1 votos size equals: 2.
	self assert: publi1 calcularPuntaje equals: -2