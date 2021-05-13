tests
testEliminarVoto
	| voto |
	voto := Voto new.
	pregunta1
		agregarVoto: (Voto likeConUsuario: usuario1 yPublicacion: pregunta1).
	self assert: pregunta1 votos size equals: 1.
	voto := pregunta1 votos detect: [ :v | v creador = usuario1 ].
	pregunta1 eliminarVoto: voto.
	self assert: pregunta1 votos size equals: 0