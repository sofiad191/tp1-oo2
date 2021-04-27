tests
testAgregarVotoConUsuario
	self assert: preg2 votos size equals: 0.
	preg2 agregarLikeConUsuario: us1.
	self assert: preg2 votos size equals: 1.
	preg2 agregarLikeConUsuario: us1.
	self assert: preg2 votos size equals: 1.
	preg2 agregarDislikeConUsuario: us1.
	self assert: preg2 votos size equals: 1.
	preg2 agregarDislikeConUsuario: us2.
	self assert: preg2 votos size equals: 2.
	preg2 agregarLikeConUsuario: us2.
	self assert: preg2 votos size equals: 2