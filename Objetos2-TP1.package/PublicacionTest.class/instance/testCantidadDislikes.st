tests
testCantidadDislikes
	self assert: preg1 cantidadDislikes equals: 0.
	preg1 agregarDislikeConUsuario: us2.
	self assert: preg1 cantidadDislikes equals: 1.
	preg1 agregarDislikeConUsuario: us2.
	self assert: preg1 cantidadDislikes equals: 1.
	preg1 agregarDislikeConUsuario: us1.
	self assert: preg1 cantidadDislikes equals: 2