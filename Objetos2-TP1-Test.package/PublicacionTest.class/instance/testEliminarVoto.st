tests
testEliminarVoto
	| voto |
	voto := Voto new.
	self assert: preg2 votos size equals: 0.
	preg2 agregarVoto: voto.
	self assert: preg2 votos size equals: 1.
	preg2 eliminarVoto: voto.
	self assert: preg2 votos size equals: 0
	