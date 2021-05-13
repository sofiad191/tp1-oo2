tests
testCantidadLikes
	self assert: pregunta1 cantidadLikes equals: 0.
	pregunta1
		agregarVoto: (Voto likeConUsuario: usuario1 yPublicacion: pregunta1).
	self assert: pregunta1 cantidadLikes equals: 1.
	pregunta1
		agregarVoto: (Voto likeConUsuario: usuario1 yPublicacion: pregunta1).
	self assert: pregunta1 cantidadLikes equals: 1.
	pregunta1
		agregarVoto: (Voto likeConUsuario: usuario2 yPublicacion: pregunta1).
	self assert: pregunta1 cantidadLikes equals: 2