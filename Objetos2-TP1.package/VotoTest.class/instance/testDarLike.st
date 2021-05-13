tests
testDarLike
	publicacion1 agregarVoto: (Voto likeConUsuario: usuario2 yPublicacion: publicacion1).
	self assert: publicacion1 votos size equals: 1.
	self assert: publicacion1 calcularPuntaje equals: 1.
	publicacion1 agregarVoto: (Voto likeConUsuario: usuario1 yPublicacion: publicacion1).
	self assert: publicacion1 votos size equals: 2.
	self assert: publicacion1 calcularPuntaje equals: 2