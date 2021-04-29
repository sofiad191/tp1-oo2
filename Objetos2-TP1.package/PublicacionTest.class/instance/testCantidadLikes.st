tests
testCantidadLikes
	self assert: preg1 cantidadLikes equals: 0.
	preg1 agregarLikeConUsuario: us2.
	self assert: preg1 cantidadLikes equals: 1.
	preg1 agregarLikeConUsuario: us2.
	self assert: preg1 cantidadLikes equals: 1.
	preg1 agregarLikeConUsuario: us1.
	self assert: preg1 cantidadLikes equals: 2