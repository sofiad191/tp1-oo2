tests
testAgregarVoto
	self assert: pregunta1 votos size equals: 0.
	pregunta1 agregarVoto: (Voto likeConUsuario: usuario1 yPublicacion: pregunta1).
	self assert: pregunta1 votos size equals: 1.
	pregunta1 agregarVoto: (Voto dislikeConUsuario: usuario1 yPublicacion: pregunta1).
	self assert: pregunta1 votos size equals: 1.
	pregunta1 agregarVoto: (Voto dislikeConUsuario: usuario2 yPublicacion: pregunta1).
	self assert: pregunta1 votos size equals: 2.
	
	