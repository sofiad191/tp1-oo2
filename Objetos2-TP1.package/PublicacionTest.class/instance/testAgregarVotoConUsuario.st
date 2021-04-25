tests
testAgregarVotoConUsuario
	self assert: preg2 votos size equals: 0.
	us1 agregarVotoConEstado: true aPublicacion: preg2.
	self assert: preg2 votos size equals: 1.
	us1 agregarVotoConEstado: true aPublicacion: preg2.
	self assert: preg2 votos size equals: 1.
	us1 agregarVotoConEstado: false aPublicacion: preg2.
	self assert: preg2 votos size equals: 1.
	us2 agregarVotoConEstado: false aPublicacion: preg2.
	self assert: preg2 votos size equals: 2.
		us2 agregarVotoConEstado: true aPublicacion: preg2.
	self assert: preg2 votos size equals: 2