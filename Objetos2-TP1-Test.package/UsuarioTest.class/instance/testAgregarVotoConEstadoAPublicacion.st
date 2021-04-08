tests
testAgregarVotoConEstadoAPublicacion
	us2 agregarVotoConEstado: true aPublicacion: preg1.
	self assert: preg1 votos size equals: 1.
	us2 agregarVotoConEstado: false aPublicacion: preg1.
	self assert: preg1 votos size equals: 1.
	
	us3 agregarVotoConEstado: true aPublicacion: preg1.
	self assert: preg1 votos size equals: 2.