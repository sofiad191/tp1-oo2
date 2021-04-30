tests
testEliminarVoto
	| voto |
	voto := Voto new.
	preg2 agregarLikeConUsuario: us1.
	self assert: preg2 votos size equals: 1.
	voto := preg2 votos detect: [ :v | v creador = us1 ].
	preg2 eliminarVoto: voto.
	self assert: preg2 votos size equals: 0