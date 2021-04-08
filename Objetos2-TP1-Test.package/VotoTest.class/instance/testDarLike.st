tests
testDarLike
	us2 agregarVotoConEstado: true aPublicacion: publi1.
	self assert: publi1 votos size equals: 1.
	self assert: publi1 calcularPuntaje equals: 1.
	us1 agregarVotoConEstado: true aPublicacion: publi1.
	self assert: publi1 votos size equals: 2.
	self assert: publi1 calcularPuntaje equals: 2
	
	