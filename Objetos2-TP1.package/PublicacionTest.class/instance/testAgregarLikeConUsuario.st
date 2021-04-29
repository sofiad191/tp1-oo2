tests
testAgregarLikeConUsuario
	self assert: preg1 votos size equals: 0.
	preg1 agregarLikeConUsuario: us2.
	self assert: preg1 votos size equals: 1.
	preg1 agregarLikeConUsuario: us2.
	self assert: preg1 votos size equals: 1.
	preg1 agregarLikeConUsuario: us1.
	self assert: preg1 votos size equals: 2