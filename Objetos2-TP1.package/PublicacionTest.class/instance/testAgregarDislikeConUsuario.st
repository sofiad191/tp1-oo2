tests
testAgregarDislikeConUsuario
	self assert: preg1 votos size equals: 0.
	preg1 agregarDislikeConUsuario: us2.
	self assert: preg1 votos size equals: 1.
	preg1 agregarDislikeConUsuario: us2.
	self assert: preg1 votos size equals: 1.
	preg1 agregarDislikeConUsuario: us1.
	self assert: preg1 votos size equals: 2