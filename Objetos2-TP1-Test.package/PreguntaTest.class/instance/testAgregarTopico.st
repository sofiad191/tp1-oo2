tests
testAgregarTopico
	| topico1 topico2 preg4 |
	topico1 := 'Java'.
	topico2 := 'OO'.
	preg4 := us1
		agregarPreguntaConTitulo: 'Hola'
		conDescripcion: 'Chau'
		yTopicos: [ topico1 , topico2 ].
	self assert: preg4 usuario equals: us1.
	self assert: preg4 topicos size equals: 2.
	self assert: (preg4 topicos includes: topico1)
	"self assert: preg1 topicos size equals: 1.
	self assert: (preg1 topicos includes: top1).
	preg1 agregarTopico: top2.
	self assert: preg1 topicos size equals: 2.
	self assert: (preg1 topicos includes: top2)"