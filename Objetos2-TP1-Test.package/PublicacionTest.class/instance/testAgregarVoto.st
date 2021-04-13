tests
testAgregarVoto
	| voto |
	voto := Voto new.
	voto darLike.
	self assert: preg1 votos size equals: 0.
	preg1 agregarVoto: voto.
	self assert: preg1 votos size equals: 1.