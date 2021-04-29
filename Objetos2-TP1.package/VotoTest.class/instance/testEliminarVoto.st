tests
testEliminarVoto
	| voto |
	voto := Voto new.
	publi1 agregarLikeConUsuario: us1.
	self assert: publi1 votos size equals: 1.
	voto := publi1 votos detect: [ :v | v creador = us1 ].
	publi1 eliminarVoto: voto.
	self assert: publi1 votos size equals: 0.